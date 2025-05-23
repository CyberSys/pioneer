// Copyright © 2008-2025 Pioneer Developers. See AUTHORS.txt for details
// Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

#ifndef _BASESPHERE_H
#define _BASESPHERE_H

#include "Camera.h"
#include "galaxy/AtmosphereParameters.h"
#include "graphics/Material.h"
#include "terrain/Terrain.h"
#include "vector3.h"

namespace Graphics {
	class Renderer;
	class RenderState;
	namespace Drawables {
		class Sphere3D;
	}
} // namespace Graphics

class BaseSphere {
public:
	BaseSphere(const SystemBody *body);
	virtual ~BaseSphere();

	virtual void Update() = 0;
	virtual void Render(Graphics::Renderer *renderer, const matrix4x4d &modelView, vector3d campos, const float radius, const std::vector<Camera::Shadow> &shadows) = 0;

	virtual double GetHeight(const vector3d &p) const { return 0.0; }

	static void Init(Graphics::Renderer *renderer);
	static void Uninit();
	static void UpdateAllBaseSphereDerivatives();
	static void OnChangeDetailLevel(Graphics::Renderer *renderer);

	void DrawAtmosphereSurface(Graphics::Renderer *renderer,
		const matrix4x4d &modelView, const vector3d &campos, float rad,
		RefCountedPtr<Graphics::Material> mat);

	// in sbody radii
	virtual double GetMaxFeatureHeight() const = 0;

	virtual void Reset() = 0;

	const SystemBody *GetSystemBody() const { return m_sbody; }
	Terrain *GetTerrain() const { return m_terrain.Get(); }

	RefCountedPtr<Graphics::Material> GetSurfaceMaterial() const { return m_surfaceMaterial; }

protected:
	virtual void SetUpMaterials() = 0;

	// set up shader data for this geosphere's atmosphere
	void SetMaterialParameters(const matrix4x4d &t, const float r, const std::vector<Camera::Shadow> &s, const AtmosphereParameters &ap);

	const SystemBody *m_sbody;

	// all variables for GetHeight(), GetColor()
	RefCountedPtr<Terrain> m_terrain;

	RefCountedPtr<Graphics::Material> m_surfaceMaterial;
	RefCountedPtr<Graphics::Material> m_atmosphereMaterial;

	// atmosphere geometry
	static std::unique_ptr<Graphics::Drawables::Sphere3D> m_atmos; // always created with the same parameters so can be shared by all atmospheres
	AtmosphereParameters m_atmosphereParameters;

private:
	static void ResetAtmosphereGeometry(Graphics::Renderer *renderer);
};

#endif /* _GEOSPHERE_H */

/// Defines standard radius values for the project.
enum ProjectRadius {
  /// Small radius value (8.0)
  small(8),

  /// Medium radius value (16.0)
  medium(16),

  /// Large radius value (32.0)
  large(32);

  /// Constructor for [ProjectRadius] enum.
  const ProjectRadius(this.value);

  /// The numeric value of the radius.
  final double value;
}

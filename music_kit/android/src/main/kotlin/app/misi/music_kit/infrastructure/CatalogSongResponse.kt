package app.misi.music_kit.infrastructure

import kotlinx.serialization.*
import kotlinx.serialization.json.JsonNames

@Serializable
data class CatalogSongResponse (
    val data: List<CatalogSongResponseItem>? = null,
)

@Serializable
data class CatalogSongResponseItem (
    val id: String? = null,
    val type: String? = null,
    val href: String? = null,
    val attributes: Song? = null,
    val relationships: Relationships? = null
)

@Serializable
data class Song (
    val albumName: String? = null,
    val genreNames: List<String>? = null,
    val trackNumber: Long? = null,
    val releaseDate: String? = null,
    val durationInMillis: Long? = null,
    val isrc: String? = null,
    val artwork: Artwork? = null,
    val composerName: String? = null,
    val url: String? = null,
    val playParams: PlayParams? = null,
    val discNumber: Long? = null,
    val isAppleDigitalMaster: Boolean? = null,
    val hasLyrics: Boolean? = null,
    val name: String? = null,
    val previews: List<Preview>? = null,
    val artistName: String? = null
)

@Serializable
data class Artwork (
    val width: Long? = null,
    val height: Long? = null,
    val url: String? = null,
    val bgColor: String? = null,
    val textColor1: String? = null,
    val textColor2: String? = null,
    val textColor3: String? = null,
    val textColor4: String? = null
)

@Serializable
data class PlayParams (
    val id: String? = null,
    val kind: String? = null
)

@Serializable
data class Preview (
    val url: String? = null
)

@Serializable
data class Relationships (
    val albums: Albums? = null,
    val artists: Albums? = null
)

@Serializable
data class Albums (
    val href: String? = null,
    val data: List<ItemInfo>? = null
)

@Serializable
data class ItemInfo (
    val id: String? = null,
    val type: String? = null,
    val href: String? = null
)

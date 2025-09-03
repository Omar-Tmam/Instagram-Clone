import 'package:equatable/equatable.dart';

import 'caption.dart';
import 'carousel_media.dart';
import 'clips_metadata.dart';
import 'collab_follow_button_info.dart';
import 'comment_inform_treatment.dart';
import 'community_notes_info.dart';
import 'crosspost_metadata.dart';
import 'fb_user_tags.dart';
import 'fundraiser_tag.dart';
import 'gen_ai_detection_method.dart';
import 'image_versions.dart';
import 'linked_media_data.dart';
import 'location.dart';
import 'mashup_info.dart';
import 'media_cropping_info.dart';
import 'media_notes.dart';
import 'meta_ai_contextual_voice_data.dart';
import 'music_metadata.dart';
import 'report_info.dart';
import 'sharing_friction_info.dart';
import 'tagged_user.dart';
import 'user.dart';
import 'video_version.dart';

class Item extends Equatable {
  final List<dynamic>? allPreviousSubmitters;
  final dynamic boostUnavailableIdentifier;
  final dynamic boostUnavailableReason;
  final dynamic boostUnavailableReasonV2;
  final bool? canModifyCarousel;
  final bool? canReply;
  final bool? canReshare;
  final bool? canSave;
  final Caption? caption;
  final bool? captionIsEdited;
  final List<CarouselMedia>? carouselMedia;
  final int? carouselMediaCount;
  final List<int>? carouselMediaIds;
  final int? carouselMediaPendingPostCount;
  final List<dynamic>? clipsTabPinnedUserIds;
  final bool? coauthorProducerCanSeeOrganicInsights;
  final List<dynamic>? coauthorProducers;
  final String? code;
  final bool? collaboratorEditEligibility;
  final int? commentCount;
  final CommentInformTreatment? commentInformTreatment;
  final CommunityNotesInfo? communityNotesInfo;
  final dynamic creativeConfig;
  final CrosspostMetadata? crosspostMetadata;
  final List<dynamic>? cutoutStickerInfo;
  final int? deletedReason;
  final int? deviceTimestamp;
  final FbUserTags? fbUserTags;
  final String? fbid;
  final List<dynamic>? featuredProducts;
  final int? filterType;
  final List<dynamic>? floatingContextItems;
  final FundraiserTag? fundraiserTag;
  final dynamic genAiChatWithAiCtaInfo;
  final GenAiDetectionMethod? genAiDetectionMethod;
  final bool? hasHighRiskGenAiInformTreatment;
  final bool? hasLiked;
  final bool? hasPrivatelyLiked;
  final int? hasSharedToFb;
  final bool? hasViewsFetching;
  final bool? hasViewsFetchingOnSearchGrid;
  final int? hiddenLikesStringVariant;
  final String? id;
  final bool? igMediaSharingDisabled;
  final dynamic igbioProduct;
  final ImageVersions? imageVersions;
  final String? inlineComposerDisplayCondition;
  final int? inlineComposerImpTriggerTime;
  final String? integrityReviewDecision;
  final List<dynamic>? invitedCoauthorProducers;
  final bool? isCommentsGifComposerEnabled;
  final bool? isCutoutStickerAllowed;
  final bool? isEligibleContentForPostRollAd;
  final bool? isEligibleForMetaAiShare;
  final bool? isInProfileGrid;
  final bool? isOpenToPublicSubmission;
  final bool? isOrganicProductTaggingEligible;
  final bool? isPaidPartnership;
  final bool? isPinned;
  final bool? isPostLiveClipsMedia;
  final bool? isQuietPost;
  final bool? isReshareOfTextPostAppMediaInIg;
  final bool? isReuseAllowed;
  final bool? isSocialUfiDisabled;
  final bool? isTaggedMediaSharedToViewerProfileGrid;
  final bool? isVideo;
  final bool? likeAndViewCountsDisabled;
  final dynamic likeCount;
  final Location? location;
  final List<dynamic>? mediaAttributionsData;
  final String? mediaFormat;
  final String? mediaName;
  final MediaNotes? mediaNotes;
  final dynamic mediaOverlayInfo;
  final bool? mediaReposterBottomsheetEnabled;
  final int? mediaType;
  final MetaAiContextualVoiceData? metaAiContextualVoiceData;
  final List<dynamic>? metaAiSuggestedPrompts;
  final MusicMetadata? musicMetadata;
  final bool? openCarouselShowFollowButton;
  final String? openCarouselSubmissionState;
  final int? originalHeight;
  final int? originalWidth;
  final int? playCount;
  final List<dynamic>? previewComments;
  final List<dynamic>? productSuggestions;
  final String? productType;
  final String? relatedAdsPivotsMediaInfo;
  final ReportInfo? reportInfo;
  final bool? shareCountDisabled;
  final SharingFrictionInfo? sharingFrictionInfo;
  final dynamic shopRoutingUserId;
  final bool? shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
  final bool? shouldShowPreviewCommentsOnlyAfterInlineExpansion;
  final List<dynamic>? sponsorTags;
  final bool? subscribeCtaVisible;
  final String? subtypeNameForRest;
  final List<TaggedUser>? taggedUsers;
  final int? takenAt;
  final String? takenAtDate;
  final int? takenAtTs;
  final String? thumbnailUrl;
  final List<dynamic>? timelinePinnedUserIds;
  final List<String>? topLikers;
  final User? user;
  final List<dynamic>? videoStickerLocales;
  final bool? areRemixesCrosspostable;
  final List<dynamic>? avatarStickers;
  final ClipsMetadata? clipsMetadata;
  final List<dynamic>? creatorViewerInsights;
  final bool? hasAudio;
  final bool? hasTaggedUsers;
  final int? igPlayCount;
  final bool? isArtistPick;
  final int? isDashEligible;
  final bool? isThirdPartyDownloadsEligible;
  final List<dynamic>? mediaUiAttributionsData;
  final int? numberOfQualities;
  final String? videoCodec;
  final double? videoDuration;
  final String? videoSubtitlesLocale;
  final String? videoUrl;
  final List<VideoVersion>? videoVersions;
  final int? fbLikeCount;
  final int? fbPlayCount;
  final double? lat;
  final double? lng;
  final int? reshareCount;
  final CollabFollowButtonInfo? collabFollowButtonInfo;
  final MashupInfo? mashupInfo;
  final String? commerceIntegrityReviewDecision;
  final LinkedMediaData? linkedMediaData;
  final MediaCroppingInfo? mediaCroppingInfo;
  final String? dominantColor;

  const Item({
    this.allPreviousSubmitters,
    this.boostUnavailableIdentifier,
    this.boostUnavailableReason,
    this.boostUnavailableReasonV2,
    this.canModifyCarousel,
    this.canReply,
    this.canReshare,
    this.canSave,
    this.caption,
    this.captionIsEdited,
    this.carouselMedia,
    this.carouselMediaCount,
    this.carouselMediaIds,
    this.carouselMediaPendingPostCount,
    this.clipsTabPinnedUserIds,
    this.coauthorProducerCanSeeOrganicInsights,
    this.coauthorProducers,
    this.code,
    this.collaboratorEditEligibility,
    this.commentCount,
    this.commentInformTreatment,
    this.communityNotesInfo,
    this.creativeConfig,
    this.crosspostMetadata,
    this.cutoutStickerInfo,
    this.deletedReason,
    this.deviceTimestamp,
    this.fbUserTags,
    this.fbid,
    this.featuredProducts,
    this.filterType,
    this.floatingContextItems,
    this.fundraiserTag,
    this.genAiChatWithAiCtaInfo,
    this.genAiDetectionMethod,
    this.hasHighRiskGenAiInformTreatment,
    this.hasLiked,
    this.hasPrivatelyLiked,
    this.hasSharedToFb,
    this.hasViewsFetching,
    this.hasViewsFetchingOnSearchGrid,
    this.hiddenLikesStringVariant,
    this.id,
    this.igMediaSharingDisabled,
    this.igbioProduct,
    this.imageVersions,
    this.inlineComposerDisplayCondition,
    this.inlineComposerImpTriggerTime,
    this.integrityReviewDecision,
    this.invitedCoauthorProducers,
    this.isCommentsGifComposerEnabled,
    this.isCutoutStickerAllowed,
    this.isEligibleContentForPostRollAd,
    this.isEligibleForMetaAiShare,
    this.isInProfileGrid,
    this.isOpenToPublicSubmission,
    this.isOrganicProductTaggingEligible,
    this.isPaidPartnership,
    this.isPinned,
    this.isPostLiveClipsMedia,
    this.isQuietPost,
    this.isReshareOfTextPostAppMediaInIg,
    this.isReuseAllowed,
    this.isSocialUfiDisabled,
    this.isTaggedMediaSharedToViewerProfileGrid,
    this.isVideo,
    this.likeAndViewCountsDisabled,
    this.likeCount,
    this.location,
    this.mediaAttributionsData,
    this.mediaFormat,
    this.mediaName,
    this.mediaNotes,
    this.mediaOverlayInfo,
    this.mediaReposterBottomsheetEnabled,
    this.mediaType,
    this.metaAiContextualVoiceData,
    this.metaAiSuggestedPrompts,
    this.musicMetadata,
    this.openCarouselShowFollowButton,
    this.openCarouselSubmissionState,
    this.originalHeight,
    this.originalWidth,
    this.playCount,
    this.previewComments,
    this.productSuggestions,
    this.productType,
    this.relatedAdsPivotsMediaInfo,
    this.reportInfo,
    this.shareCountDisabled,
    this.sharingFrictionInfo,
    this.shopRoutingUserId,
    this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
    this.shouldShowPreviewCommentsOnlyAfterInlineExpansion,
    this.sponsorTags,
    this.subscribeCtaVisible,
    this.subtypeNameForRest,
    this.taggedUsers,
    this.takenAt,
    this.takenAtDate,
    this.takenAtTs,
    this.thumbnailUrl,
    this.timelinePinnedUserIds,
    this.topLikers,
    this.user,
    this.videoStickerLocales,
    this.areRemixesCrosspostable,
    this.avatarStickers,
    this.clipsMetadata,
    this.creatorViewerInsights,
    this.hasAudio,
    this.hasTaggedUsers,
    this.igPlayCount,
    this.isArtistPick,
    this.isDashEligible,
    this.isThirdPartyDownloadsEligible,
    this.mediaUiAttributionsData,
    this.numberOfQualities,
    this.videoCodec,
    this.videoDuration,
    this.videoSubtitlesLocale,
    this.videoUrl,
    this.videoVersions,
    this.fbLikeCount,
    this.fbPlayCount,
    this.lat,
    this.lng,
    this.reshareCount,
    this.collabFollowButtonInfo,
    this.mashupInfo,
    this.commerceIntegrityReviewDecision,
    this.linkedMediaData,
    this.mediaCroppingInfo,
    this.dominantColor,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        allPreviousSubmitters:
            json['all_previous_submitters'] as List<dynamic>?,
        boostUnavailableIdentifier:
            json['boost_unavailable_identifier'] as dynamic,
        boostUnavailableReason: json['boost_unavailable_reason'] as dynamic,
        boostUnavailableReasonV2:
            json['boost_unavailable_reason_v2'] as dynamic,
        canModifyCarousel: json['can_modify_carousel'] as bool?,
        canReply: json['can_reply'] as bool?,
        canReshare: json['can_reshare'] as bool?,
        canSave: json['can_save'] as bool?,
        caption: json['caption'] == null
            ? null
            : Caption.fromJson(json['caption'] as Map<String, dynamic>),
        captionIsEdited: json['caption_is_edited'] as bool?,
        carouselMedia: (json['carousel_media'] as List<dynamic>?)
            ?.map((e) => CarouselMedia.fromJson(e as Map<String, dynamic>))
            .toList(),
        carouselMediaCount: json['carousel_media_count'] as int?,
        carouselMediaIds: json['carousel_media_ids'] as List<int>?,
        carouselMediaPendingPostCount:
            json['carousel_media_pending_post_count'] as int?,
        clipsTabPinnedUserIds:
            json['clips_tab_pinned_user_ids'] as List<dynamic>?,
        coauthorProducerCanSeeOrganicInsights:
            json['coauthor_producer_can_see_organic_insights'] as bool?,
        coauthorProducers: json['coauthor_producers'] as List<dynamic>?,
        code: json['code'] as String?,
        collaboratorEditEligibility:
            json['collaborator_edit_eligibility'] as bool?,
        commentCount: json['comment_count'] as int?,
        commentInformTreatment: json['comment_inform_treatment'] == null
            ? null
            : CommentInformTreatment.fromJson(
                json['comment_inform_treatment'] as Map<String, dynamic>),
        communityNotesInfo: json['community_notes_info'] == null
            ? null
            : CommunityNotesInfo.fromJson(
                json['community_notes_info'] as Map<String, dynamic>),
        creativeConfig: json['creative_config'] as dynamic,
        crosspostMetadata: json['crosspost_metadata'] == null
            ? null
            : CrosspostMetadata.fromJson(
                json['crosspost_metadata'] as Map<String, dynamic>),
        cutoutStickerInfo: json['cutout_sticker_info'] as List<dynamic>?,
        deletedReason: json['deleted_reason'] as int?,
        deviceTimestamp: json['device_timestamp'] as int?,
        fbUserTags: json['fb_user_tags'] == null
            ? null
            : FbUserTags.fromJson(json['fb_user_tags'] as Map<String, dynamic>),
        fbid: json['fbid'] as String?,
        featuredProducts: json['featured_products'] as List<dynamic>?,
        filterType: json['filter_type'] as int?,
        floatingContextItems: json['floating_context_items'] as List<dynamic>?,
        fundraiserTag: json['fundraiser_tag'] == null
            ? null
            : FundraiserTag.fromJson(
                json['fundraiser_tag'] as Map<String, dynamic>),
        genAiChatWithAiCtaInfo: json['gen_ai_chat_with_ai_cta_info'] as dynamic,
        genAiDetectionMethod: json['gen_ai_detection_method'] == null
            ? null
            : GenAiDetectionMethod.fromJson(
                json['gen_ai_detection_method'] as Map<String, dynamic>),
        hasHighRiskGenAiInformTreatment:
            json['has_high_risk_gen_ai_inform_treatment'] as bool?,
        hasLiked: json['has_liked'] as bool?,
        hasPrivatelyLiked: json['has_privately_liked'] as bool?,
        hasSharedToFb: json['has_shared_to_fb'] as int?,
        hasViewsFetching: json['has_views_fetching'] as bool?,
        hasViewsFetchingOnSearchGrid:
            json['has_views_fetching_on_search_grid'] as bool?,
        hiddenLikesStringVariant: json['hidden_likes_string_variant'] as int?,
        id: json['id'] as String?,
        igMediaSharingDisabled: json['ig_media_sharing_disabled'] as bool?,
        igbioProduct: json['igbio_product'] as dynamic,
        imageVersions: json['image_versions'] == null
            ? null
            : ImageVersions.fromJson(
                json['image_versions'] as Map<String, dynamic>),
        inlineComposerDisplayCondition:
            json['inline_composer_display_condition'] as String?,
        inlineComposerImpTriggerTime:
            json['inline_composer_imp_trigger_time'] as int?,
        integrityReviewDecision: json['integrity_review_decision'] as String?,
        invitedCoauthorProducers:
            json['invited_coauthor_producers'] as List<dynamic>?,
        isCommentsGifComposerEnabled:
            json['is_comments_gif_composer_enabled'] as bool?,
        isCutoutStickerAllowed: json['is_cutout_sticker_allowed'] as bool?,
        isEligibleContentForPostRollAd:
            json['is_eligible_content_for_post_roll_ad'] as bool?,
        isEligibleForMetaAiShare:
            json['is_eligible_for_meta_ai_share'] as bool?,
        isInProfileGrid: json['is_in_profile_grid'] as bool?,
        isOpenToPublicSubmission: json['is_open_to_public_submission'] as bool?,
        isOrganicProductTaggingEligible:
            json['is_organic_product_tagging_eligible'] as bool?,
        isPaidPartnership: json['is_paid_partnership'] as bool?,
        isPinned: json['is_pinned'] as bool?,
        isPostLiveClipsMedia: json['is_post_live_clips_media'] as bool?,
        isQuietPost: json['is_quiet_post'] as bool?,
        isReshareOfTextPostAppMediaInIg:
            json['is_reshare_of_text_post_app_media_in_ig'] as bool?,
        isReuseAllowed: json['is_reuse_allowed'] as bool?,
        isSocialUfiDisabled: json['is_social_ufi_disabled'] as bool?,
        isTaggedMediaSharedToViewerProfileGrid:
            json['is_tagged_media_shared_to_viewer_profile_grid'] as bool?,
        isVideo: json['is_video'] as bool?,
        likeAndViewCountsDisabled:
            json['like_and_view_counts_disabled'] as bool?,
        likeCount: json['like_count'] as dynamic,
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        mediaAttributionsData:
            json['media_attributions_data'] as List<dynamic>?,
        mediaFormat: json['media_format'] as String?,
        mediaName: json['media_name'] as String?,
        mediaNotes: json['media_notes'] == null
            ? null
            : MediaNotes.fromJson(json['media_notes'] as Map<String, dynamic>),
        mediaOverlayInfo: json['media_overlay_info'] as dynamic,
        mediaReposterBottomsheetEnabled:
            json['media_reposter_bottomsheet_enabled'] as bool?,
        mediaType: json['media_type'] as int?,
        metaAiContextualVoiceData: json['meta_ai_contextual_voice_data'] == null
            ? null
            : MetaAiContextualVoiceData.fromJson(
                json['meta_ai_contextual_voice_data'] as Map<String, dynamic>),
        metaAiSuggestedPrompts:
            json['meta_ai_suggested_prompts'] as List<dynamic>?,
        musicMetadata: json['music_metadata'] == null
            ? null
            : MusicMetadata.fromJson(
                json['music_metadata'] as Map<String, dynamic>),
        openCarouselShowFollowButton:
            json['open_carousel_show_follow_button'] as bool?,
        openCarouselSubmissionState:
            json['open_carousel_submission_state'] as String?,
        originalHeight: json['original_height'] as int?,
        originalWidth: json['original_width'] as int?,
        playCount: json['play_count'] as int?,
        previewComments: json['preview_comments'] as List<dynamic>?,
        productSuggestions: json['product_suggestions'] as List<dynamic>?,
        productType: json['product_type'] as String?,
        relatedAdsPivotsMediaInfo:
            json['related_ads_pivots_media_info'] as String?,
        reportInfo: json['report_info'] == null
            ? null
            : ReportInfo.fromJson(json['report_info'] as Map<String, dynamic>),
        shareCountDisabled: json['share_count_disabled'] as bool?,
        sharingFrictionInfo: json['sharing_friction_info'] == null
            ? null
            : SharingFrictionInfo.fromJson(
                json['sharing_friction_info'] as Map<String, dynamic>),
        shopRoutingUserId: json['shop_routing_user_id'] as dynamic,
        shouldShowAuthorPogForTaggedMediaSharedToProfileGrid: json[
                'should_show_author_pog_for_tagged_media_shared_to_profile_grid']
            as bool?,
        shouldShowPreviewCommentsOnlyAfterInlineExpansion:
            json['should_show_preview_comments_only_after_inline_expansion']
                as bool?,
        sponsorTags: json['sponsor_tags'] as List<dynamic>?,
        subscribeCtaVisible: json['subscribe_cta_visible'] as bool?,
        subtypeNameForRest: json['subtype_name_for_REST__'] as String?,
        taggedUsers: (json['tagged_users'] as List<dynamic>?)
            ?.map((e) => TaggedUser.fromJson(e as Map<String, dynamic>))
            .toList(),
        takenAt: json['taken_at'] as int?,
        takenAtDate: json['taken_at_date'] as String?,
        takenAtTs: json['taken_at_ts'] as int?,
        thumbnailUrl: json['thumbnail_url'] as String?,
        timelinePinnedUserIds:
            json['timeline_pinned_user_ids'] as List<dynamic>?,
        topLikers: json['top_likers'] as List<String>?,
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        videoStickerLocales: json['video_sticker_locales'] as List<dynamic>?,
        areRemixesCrosspostable: json['are_remixes_crosspostable'] as bool?,
        avatarStickers: json['avatar_stickers'] as List<dynamic>?,
        clipsMetadata: json['clips_metadata'] == null
            ? null
            : ClipsMetadata.fromJson(
                json['clips_metadata'] as Map<String, dynamic>),
        creatorViewerInsights:
            json['creator_viewer_insights'] as List<dynamic>?,
        hasAudio: json['has_audio'] as bool?,
        hasTaggedUsers: json['has_tagged_users'] as bool?,
        igPlayCount: json['ig_play_count'] as int?,
        isArtistPick: json['is_artist_pick'] as bool?,
        isDashEligible: json['is_dash_eligible'] as int?,
        isThirdPartyDownloadsEligible:
            json['is_third_party_downloads_eligible'] as bool?,
        mediaUiAttributionsData:
            json['media_ui_attributions_data'] as List<dynamic>?,
        numberOfQualities: json['number_of_qualities'] as int?,
        videoCodec: json['video_codec'] as String?,
        videoDuration: (json['video_duration'] as num?)?.toDouble(),
        videoSubtitlesLocale: json['video_subtitles_locale'] as String?,
        videoUrl: json['video_url'] as String?,
        videoVersions: (json['video_versions'] as List<dynamic>?)
            ?.map((e) => VideoVersion.fromJson(e as Map<String, dynamic>))
            .toList(),
        fbLikeCount: json['fb_like_count'] as int?,
        fbPlayCount: json['fb_play_count'] as int?,
        lat: (json['lat'] as num?)?.toDouble(),
        lng: (json['lng'] as num?)?.toDouble(),
        reshareCount: json['reshare_count'] as int?,
        collabFollowButtonInfo: json['collab_follow_button_info'] == null
            ? null
            : CollabFollowButtonInfo.fromJson(
                json['collab_follow_button_info'] as Map<String, dynamic>),
        mashupInfo: json['mashup_info'] == null
            ? null
            : MashupInfo.fromJson(json['mashup_info'] as Map<String, dynamic>),
        commerceIntegrityReviewDecision:
            json['commerce_integrity_review_decision'] as String?,
        linkedMediaData: json['linked_media_data'] == null
            ? null
            : LinkedMediaData.fromJson(
                json['linked_media_data'] as Map<String, dynamic>),
        mediaCroppingInfo: json['media_cropping_info'] == null
            ? null
            : MediaCroppingInfo.fromJson(
                json['media_cropping_info'] as Map<String, dynamic>),
        dominantColor: json['dominant_color'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'all_previous_submitters': allPreviousSubmitters,
        'boost_unavailable_identifier': boostUnavailableIdentifier,
        'boost_unavailable_reason': boostUnavailableReason,
        'boost_unavailable_reason_v2': boostUnavailableReasonV2,
        'can_modify_carousel': canModifyCarousel,
        'can_reply': canReply,
        'can_reshare': canReshare,
        'can_save': canSave,
        'caption': caption?.toJson(),
        'caption_is_edited': captionIsEdited,
        'carousel_media': carouselMedia?.map((e) => e.toJson()).toList(),
        'carousel_media_count': carouselMediaCount,
        'carousel_media_ids': carouselMediaIds,
        'carousel_media_pending_post_count': carouselMediaPendingPostCount,
        'clips_tab_pinned_user_ids': clipsTabPinnedUserIds,
        'coauthor_producer_can_see_organic_insights':
            coauthorProducerCanSeeOrganicInsights,
        'coauthor_producers': coauthorProducers,
        'code': code,
        'collaborator_edit_eligibility': collaboratorEditEligibility,
        'comment_count': commentCount,
        'comment_inform_treatment': commentInformTreatment?.toJson(),
        'community_notes_info': communityNotesInfo?.toJson(),
        'creative_config': creativeConfig,
        'crosspost_metadata': crosspostMetadata?.toJson(),
        'cutout_sticker_info': cutoutStickerInfo,
        'deleted_reason': deletedReason,
        'device_timestamp': deviceTimestamp,
        'fb_user_tags': fbUserTags?.toJson(),
        'fbid': fbid,
        'featured_products': featuredProducts,
        'filter_type': filterType,
        'floating_context_items': floatingContextItems,
        'fundraiser_tag': fundraiserTag?.toJson(),
        'gen_ai_chat_with_ai_cta_info': genAiChatWithAiCtaInfo,
        'gen_ai_detection_method': genAiDetectionMethod?.toJson(),
        'has_high_risk_gen_ai_inform_treatment':
            hasHighRiskGenAiInformTreatment,
        'has_liked': hasLiked,
        'has_privately_liked': hasPrivatelyLiked,
        'has_shared_to_fb': hasSharedToFb,
        'has_views_fetching': hasViewsFetching,
        'has_views_fetching_on_search_grid': hasViewsFetchingOnSearchGrid,
        'hidden_likes_string_variant': hiddenLikesStringVariant,
        'id': id,
        'ig_media_sharing_disabled': igMediaSharingDisabled,
        'igbio_product': igbioProduct,
        'image_versions': imageVersions?.toJson(),
        'inline_composer_display_condition': inlineComposerDisplayCondition,
        'inline_composer_imp_trigger_time': inlineComposerImpTriggerTime,
        'integrity_review_decision': integrityReviewDecision,
        'invited_coauthor_producers': invitedCoauthorProducers,
        'is_comments_gif_composer_enabled': isCommentsGifComposerEnabled,
        'is_cutout_sticker_allowed': isCutoutStickerAllowed,
        'is_eligible_content_for_post_roll_ad': isEligibleContentForPostRollAd,
        'is_eligible_for_meta_ai_share': isEligibleForMetaAiShare,
        'is_in_profile_grid': isInProfileGrid,
        'is_open_to_public_submission': isOpenToPublicSubmission,
        'is_organic_product_tagging_eligible': isOrganicProductTaggingEligible,
        'is_paid_partnership': isPaidPartnership,
        'is_pinned': isPinned,
        'is_post_live_clips_media': isPostLiveClipsMedia,
        'is_quiet_post': isQuietPost,
        'is_reshare_of_text_post_app_media_in_ig':
            isReshareOfTextPostAppMediaInIg,
        'is_reuse_allowed': isReuseAllowed,
        'is_social_ufi_disabled': isSocialUfiDisabled,
        'is_tagged_media_shared_to_viewer_profile_grid':
            isTaggedMediaSharedToViewerProfileGrid,
        'is_video': isVideo,
        'like_and_view_counts_disabled': likeAndViewCountsDisabled,
        'like_count': likeCount,
        'location': location?.toJson(),
        'media_attributions_data': mediaAttributionsData,
        'media_format': mediaFormat,
        'media_name': mediaName,
        'media_notes': mediaNotes?.toJson(),
        'media_overlay_info': mediaOverlayInfo,
        'media_reposter_bottomsheet_enabled': mediaReposterBottomsheetEnabled,
        'media_type': mediaType,
        'meta_ai_contextual_voice_data': metaAiContextualVoiceData?.toJson(),
        'meta_ai_suggested_prompts': metaAiSuggestedPrompts,
        'music_metadata': musicMetadata?.toJson(),
        'open_carousel_show_follow_button': openCarouselShowFollowButton,
        'open_carousel_submission_state': openCarouselSubmissionState,
        'original_height': originalHeight,
        'original_width': originalWidth,
        'play_count': playCount,
        'preview_comments': previewComments,
        'product_suggestions': productSuggestions,
        'product_type': productType,
        'related_ads_pivots_media_info': relatedAdsPivotsMediaInfo,
        'report_info': reportInfo?.toJson(),
        'share_count_disabled': shareCountDisabled,
        'sharing_friction_info': sharingFrictionInfo?.toJson(),
        'shop_routing_user_id': shopRoutingUserId,
        'should_show_author_pog_for_tagged_media_shared_to_profile_grid':
            shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
        'should_show_preview_comments_only_after_inline_expansion':
            shouldShowPreviewCommentsOnlyAfterInlineExpansion,
        'sponsor_tags': sponsorTags,
        'subscribe_cta_visible': subscribeCtaVisible,
        'subtype_name_for_REST__': subtypeNameForRest,
        'tagged_users': taggedUsers?.map((e) => e.toJson()).toList(),
        'taken_at': takenAt,
        'taken_at_date': takenAtDate,
        'taken_at_ts': takenAtTs,
        'thumbnail_url': thumbnailUrl,
        'timeline_pinned_user_ids': timelinePinnedUserIds,
        'top_likers': topLikers,
        'user': user?.toJson(),
        'video_sticker_locales': videoStickerLocales,
        'are_remixes_crosspostable': areRemixesCrosspostable,
        'avatar_stickers': avatarStickers,
        'clips_metadata': clipsMetadata?.toJson(),
        'creator_viewer_insights': creatorViewerInsights,
        'has_audio': hasAudio,
        'has_tagged_users': hasTaggedUsers,
        'ig_play_count': igPlayCount,
        'is_artist_pick': isArtistPick,
        'is_dash_eligible': isDashEligible,
        'is_third_party_downloads_eligible': isThirdPartyDownloadsEligible,
        'media_ui_attributions_data': mediaUiAttributionsData,
        'number_of_qualities': numberOfQualities,
        'video_codec': videoCodec,
        'video_duration': videoDuration,
        'video_subtitles_locale': videoSubtitlesLocale,
        'video_url': videoUrl,
        'video_versions': videoVersions?.map((e) => e.toJson()).toList(),
        'fb_like_count': fbLikeCount,
        'fb_play_count': fbPlayCount,
        'lat': lat,
        'lng': lng,
        'reshare_count': reshareCount,
        'collab_follow_button_info': collabFollowButtonInfo?.toJson(),
        'mashup_info': mashupInfo?.toJson(),
        'commerce_integrity_review_decision': commerceIntegrityReviewDecision,
        'linked_media_data': linkedMediaData?.toJson(),
        'media_cropping_info': mediaCroppingInfo?.toJson(),
        'dominant_color': dominantColor,
      };

  @override
  List<Object?> get props {
    return [
      allPreviousSubmitters,
      boostUnavailableIdentifier,
      boostUnavailableReason,
      boostUnavailableReasonV2,
      canModifyCarousel,
      canReply,
      canReshare,
      canSave,
      caption,
      captionIsEdited,
      carouselMedia,
      carouselMediaCount,
      carouselMediaIds,
      carouselMediaPendingPostCount,
      clipsTabPinnedUserIds,
      coauthorProducerCanSeeOrganicInsights,
      coauthorProducers,
      code,
      collaboratorEditEligibility,
      commentCount,
      commentInformTreatment,
      communityNotesInfo,
      creativeConfig,
      crosspostMetadata,
      cutoutStickerInfo,
      deletedReason,
      deviceTimestamp,
      fbUserTags,
      fbid,
      featuredProducts,
      filterType,
      floatingContextItems,
      fundraiserTag,
      genAiChatWithAiCtaInfo,
      genAiDetectionMethod,
      hasHighRiskGenAiInformTreatment,
      hasLiked,
      hasPrivatelyLiked,
      hasSharedToFb,
      hasViewsFetching,
      hasViewsFetchingOnSearchGrid,
      hiddenLikesStringVariant,
      id,
      igMediaSharingDisabled,
      igbioProduct,
      imageVersions,
      inlineComposerDisplayCondition,
      inlineComposerImpTriggerTime,
      integrityReviewDecision,
      invitedCoauthorProducers,
      isCommentsGifComposerEnabled,
      isCutoutStickerAllowed,
      isEligibleContentForPostRollAd,
      isEligibleForMetaAiShare,
      isInProfileGrid,
      isOpenToPublicSubmission,
      isOrganicProductTaggingEligible,
      isPaidPartnership,
      isPinned,
      isPostLiveClipsMedia,
      isQuietPost,
      isReshareOfTextPostAppMediaInIg,
      isReuseAllowed,
      isSocialUfiDisabled,
      isTaggedMediaSharedToViewerProfileGrid,
      isVideo,
      likeAndViewCountsDisabled,
      likeCount,
      location,
      mediaAttributionsData,
      mediaFormat,
      mediaName,
      mediaNotes,
      mediaOverlayInfo,
      mediaReposterBottomsheetEnabled,
      mediaType,
      metaAiContextualVoiceData,
      metaAiSuggestedPrompts,
      musicMetadata,
      openCarouselShowFollowButton,
      openCarouselSubmissionState,
      originalHeight,
      originalWidth,
      playCount,
      previewComments,
      productSuggestions,
      productType,
      relatedAdsPivotsMediaInfo,
      reportInfo,
      shareCountDisabled,
      sharingFrictionInfo,
      shopRoutingUserId,
      shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
      shouldShowPreviewCommentsOnlyAfterInlineExpansion,
      sponsorTags,
      subscribeCtaVisible,
      subtypeNameForRest,
      taggedUsers,
      takenAt,
      takenAtDate,
      takenAtTs,
      thumbnailUrl,
      timelinePinnedUserIds,
      topLikers,
      user,
      videoStickerLocales,
      areRemixesCrosspostable,
      avatarStickers,
      clipsMetadata,
      creatorViewerInsights,
      hasAudio,
      hasTaggedUsers,
      igPlayCount,
      isArtistPick,
      isDashEligible,
      isThirdPartyDownloadsEligible,
      mediaUiAttributionsData,
      numberOfQualities,
      videoCodec,
      videoDuration,
      videoSubtitlesLocale,
      videoUrl,
      videoVersions,
      fbLikeCount,
      fbPlayCount,
      lat,
      lng,
      reshareCount,
      collabFollowButtonInfo,
      mashupInfo,
      commerceIntegrityReviewDecision,
      linkedMediaData,
      mediaCroppingInfo,
      dominantColor,
    ];
  }
}

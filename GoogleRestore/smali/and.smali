.class public final Land;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final A:Lccv;

.field public static final B:Lccv;

.field public static final C:Lccv;

.field public static final D:Lccv;

.field public static final E:Lccv;

.field public static final F:Lccv;

.field public static final G:Lccv;

.field public static final H:Lccv;

.field public static final I:Lccv;

.field public static final J:Lccv;

.field public static final K:Lccv;

.field public static final L:Lccv;

.field public static final M:Lccv;

.field public static final N:Lccv;

.field public static final O:Lccv;

.field public static final P:Lccv;

.field public static final Q:Lccv;

.field public static final R:Lccv;

.field public static final S:Lccv;

.field public static final T:Lccv;

.field public static final U:Lccv;

.field public static final V:Lccv;

.field public static final W:Lccv;

.field public static final X:Lccv;

.field public static final Y:Lccv;

.field public static final Z:Lccv;

.field public static final a:Lccv;

.field public static final aa:Lccv;

.field public static final ab:Lccv;

.field public static final ac:Lccv;

.field public static final ad:Lccv;

.field public static final ae:Lccv;

.field public static final af:Lccv;

.field public static final ag:Lccv;

.field public static final ah:Lccv;

.field public static final ai:Lccv;

.field public static final aj:Lccv;

.field public static final ak:Lccv;

.field public static final al:Lccv;

.field public static final am:Lccv;

.field public static final an:Lccv;

.field public static final ao:Lccv;

.field public static final ap:Lccv;

.field public static final aq:Lccv;

.field private static final ar:Laqd;

.field private static final as:Lcct;

.field private static final at:Lcct;

.field private static final au:Ljava/lang/String;

.field private static final av:Lccv;

.field private static final aw:Lccv;

.field public static final b:Lccv;

.field public static final c:Lccv;

.field public static final d:Lccv;

.field public static final e:Lccv;

.field public static final f:Lccv;

.field public static final g:Lccv;

.field public static final h:Lccv;

.field public static final i:Lccv;

.field public static final j:Lccv;

.field public static final k:Lccv;

.field public static final l:Lccv;

.field public static final m:Lccv;

.field public static final n:Lccv;

.field public static final o:Lccv;

.field public static final p:Lccv;

.field public static final q:Lccv;

.field public static final r:Lccv;

.field public static final s:Lccv;

.field public static final t:Lccv;

.field public static final u:Lccv;

.field public static final v:Lccv;

.field public static final w:Lccv;

.field public static final x:Lccv;

.field public static final y:Lccv;

.field public static final z:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v1, "Exception encoding the blacklist item: %s"

    const-string v2, "UTF-8"

    new-instance v0, Lacw;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "G"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1
    invoke-direct {v0, v4}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Land;->ar:Laqd;

    new-instance v4, Lcct;

    .line 2
    invoke-static {}, Laqg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v0}, Lcct;-><init>(Landroid/net/Uri;)V

    sput-object v4, Land;->as:Lcct;

    new-instance v0, Lcct;

    .line 3
    const-string v5, "com.google.android.euicc"

    invoke-static {v5}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v5}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 4
    const-string v5, "euicc.experiment."

    invoke-virtual {v0, v5}, Lcct;->a(Ljava/lang/String;)Lcct;

    move-result-object v0

    sput-object v0, Land;->at:Lcct;

    .line 5
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    const-wide/16 v7, 0x5

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    const-string v5, "backup_phenotype_sync_timeout_millis"

    invoke-virtual {v4, v5, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v5

    sput-object v5, Land;->a:Lccv;

    .line 7
    const-string v5, "backup_should_sync_phenotype"

    invoke-virtual {v4, v5, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v5

    sput-object v5, Land;->b:Lccv;

    .line 8
    const-string v5, "android_id"

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v5, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v5

    sput-object v5, Land;->c:Lccv;

    .line 9
    const-string v5, "backup_fix_locale_for_spongy_castle"

    invoke-virtual {v4, v5, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 10
    const-string v5, "backup_enable_tcp_transport_in_d2d_for_e2e_testing"

    invoke-virtual {v4, v5, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 11
    const-string v5, "Suw__enable_esim_seamless_transfer"

    invoke-virtual {v0, v5, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->d:Lccv;

    .line 12
    const-string v0, "backup_should_handle_usb_intents"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    const-wide/16 v11, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    const-string v0, "backup_usb_device_polling_interval_ms"

    invoke-virtual {v4, v0, v13, v14}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 15
    const-string v0, "backup_usb_accessory_description"

    const-string v5, "Data Transfer Tool"

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 16
    const-string v0, "backup_accessory_uri"

    const-string v5, "https://g.co/datatransferhelp"

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 17
    const-string v0, "backup_accessory_serial"

    const-string v5, "0000000012345678"

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 18
    const-string v0, "backup_should_show_fallback_ui_on_wrong_usb_data_role"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    const-wide/16 v13, 0x3c

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 21
    const-string v0, "backup_usb_port_role_switch_cooldown_period_millis"

    invoke-virtual {v4, v0, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 22
    const-string v0, "backup_should_swap_power_role"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    const-wide/16 v9, 0x14

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 25
    const-string v0, "backup_usb_only_data_port_role_switch_cooldown_period_millis"

    invoke-virtual {v4, v0, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 26
    const-string v0, "backup_usb_data_role_swaps_retries"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 27
    const-string v0, "backup_skip_files_that_already_exist_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 28
    const-string v0, "backup_enable_smart_device_flow_in_d2d_migrate_target"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 30
    const-wide/16 v9, 0x4

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    const-string v0, "backup_play_final_hold_timeout_ms"

    invoke-virtual {v4, v0, v13, v14}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v0

    sput-object v0, Land;->e:Lccv;

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 33
    const-string v0, "backup_play_final_hold_enterprise_timeout_ms"

    invoke-virtual {v4, v0, v13, v14}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v0

    sput-object v0, Land;->f:Lccv;

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    const-wide/16 v13, 0xa

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 36
    const-string v0, "backup_deferred_play_final_hold_timeout_ms"

    invoke-virtual {v4, v0, v11, v12}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    const-string v0, "backup_target_d2d_timeout_ms"

    invoke-virtual {v4, v0, v11, v12}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 39
    const-string v0, "backup_enable_final_sync_of_prefs_to_disk"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 40
    const-string v0, "backup_gmscore_source_min_version"

    const v5, 0x958940

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 41
    const-string v0, "backup_enable_ios_d2d_migration_flow"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 42
    const-string v0, "backup_ios_try_android_open_ssl_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 43
    const-string v0, "backup_enable_photos_and_videos_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 44
    const-string v0, "backup_enable_documents_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 45
    const-string v0, "backup_enable_music_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 46
    const-string v0, "backup_enable_contacts_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 47
    const-string v0, "backup_enable_pixelmigrate_app_data_flavor"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 48
    const-string v0, "backup_enable_pixelmigrate_ios_messages"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 49
    const-string v0, "backup_enable_downloads_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 50
    const-string v0, "backup_enable_ios_wallpaper_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 51
    const-string v0, "backup_enable_ios_call_log_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 52
    const-string v0, "backup_enable_ios_calendar_flavor_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 53
    const-string v0, "backup_max_ios_calendar_events_flavor_in_d2d_migrate"

    const/16 v5, 0x2710

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 54
    const-string v0, "backup_write_to_shared_preferences_delay_millis"

    const/16 v11, 0x1388

    invoke-virtual {v4, v0, v11}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 55
    const-string v0, "backup_enable_ios_app_matching_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 56
    const-string v0, "backup_use_icon_state_plist_in_ios_app_matching"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 57
    const-string v0, "backup_max_ios_wallpaper_size_to_convert_in_bytes"

    const-wide/32 v11, 0x3200000

    invoke-virtual {v4, v0, v11, v12}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 58
    const-string v0, "backup_ios_wallpaper_use_cropped_image"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 59
    const-string v0, "backup_ios_show_unlock_screen"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    .line 62
    const-string v0, "backup_ios_trust_screen_show_reconnect_cable_text_timeout_millis"

    invoke-virtual {v4, v0, v11, v12}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 63
    const-string v0, "backup_ios_app_matching_service_request_connection_timeout_millis"

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 64
    const-string v0, "backup_ios_app_matching_service_request_read_timeout_millis"

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 65
    const-string v0, "backup_enable_fetch_contacts_data_is_default_field_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 66
    const-string v0, "backup_enable_copy_google_contacts_in_d2d_migrate"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 67
    const-string v0, "backup_enable_subset_match_deduping"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 68
    const-string v0, "backup_enable_subset_match_deduping_excluding_3p"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 69
    const-string v0, "backup_enable_exact_match_deduping_for_source_contacts"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 70
    const-string v0, "backup_enable_hot_update_blacklisted_contacts_account_types"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->g:Lccv;

    .line 71
    const-string v0, "backup_hot_add_to_blacklisted_contacts_account_types"

    const-string v11, ""

    invoke-virtual {v4, v0, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v0

    sput-object v0, Land;->h:Lccv;

    .line 72
    const-string v0, "backup_hot_remove_from_blacklisted_contacts_account_types"

    invoke-virtual {v4, v0, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v0

    sput-object v0, Land;->i:Lccv;

    .line 73
    const-string v0, "backup_enable_create_contacts_group_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 74
    const-string v0, "backup_ios_app_matching_service_request_apps_limit"

    const/16 v12, 0xc8

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 75
    const-string v0, "backup_restore_packages_batch_size"

    const/16 v12, 0x64

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v0

    sput-object v0, Land;->j:Lccv;

    .line 76
    const-string v0, "backup_enable_apps_list_logging_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 77
    const-string v0, "backup_enable_app_icons_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->k:Lccv;

    .line 78
    const-string v0, "backup_app_icons_cache_size_in_d2d_migrate"

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v0

    sput-object v0, Land;->l:Lccv;

    .line 79
    const-string v0, "backup_use_webp_for_app_icons_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->m:Lccv;

    .line 80
    const-string v0, "backup_ignore_non_dangerous_permissions_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 81
    const-string v0, "backup_enable_app_filtering_by_availability_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 82
    const-string v0, "backup_timeout_between_preparing_devices_millis"

    const/16 v15, 0x7d0

    invoke-virtual {v4, v0, v15}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 83
    const-string v0, "backup_timeout_between_connecting_blacklisted_devices_millis"

    invoke-virtual {v4, v0, v15}, Lcct;->a(Ljava/lang/String;I)Lccv;

    :try_start_0
    const-string v0, "Nexus 5"

    .line 84
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v17, 0x77359400

    .line 85
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v3

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v14, v14, v16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    sget-object v12, Land;->ar:Laqd;

    new-array v13, v3, [Ljava/lang/Object;

    .line 87
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v6

    invoke-virtual {v12, v1, v13}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v11

    .line 86
    :goto_0
    nop

    .line 88
    const-string v12, "backup_devices_with_media_cap"

    invoke-virtual {v4, v12, v0}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    sget-object v4, Land;->as:Lcct;

    .line 89
    const-string v0, "backup_initial_backoff_ios_calendar_flavor_in_d2d_migrate_in_secs"

    const/4 v12, 0x4

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    const/16 v0, 0x28

    .line 90
    const-string v13, "backup_max_backoff_ios_calendar_flavor_in_d2d_migrate_in_secs"

    invoke-virtual {v4, v13, v0}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 91
    const-string v0, "backup_times_device_can_fail_getting_into_accessory"

    const/4 v13, 0x5

    invoke-virtual {v4, v0, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 92
    const-string v0, "backup_times_device_can_quickly_replug"

    const/4 v14, 0x3

    invoke-virtual {v4, v0, v14}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 93
    const-string v0, "backup_timeout_between_connections_millis"

    invoke-virtual {v4, v0, v15}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 94
    const-string v0, "backup_handshake_timeout_millis"

    const/16 v15, 0x4e20

    invoke-virtual {v4, v0, v15}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 95
    const-string v0, "backup_ios_messages_skip_null_text"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 96
    const-string v0, "backup_ios_messages_handle_apps"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 97
    const-string v0, "backup_ios_messages_throw_runtime_exception"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 98
    const-string v0, "backup_ios_pictures_keep_timestamp"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 99
    const-string v0, "backup_should_decrypt_ios_backup"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 100
    const-string v0, "backup_should_show_device_policy_manager_removal_flow"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 101
    const-string v0, "backup_ios_photos_types_to_skip_csv"

    const-string v15, "2,4"

    invoke-virtual {v4, v0, v15}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 102
    const-string v0, "backup_ios_photos_log_skipped_cloud_placeholder_kinds"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 103
    const-string v0, "backup_ios_photos_extensions_for_other_directory_csv"

    const-string v15, ".png,.gif"

    invoke-virtual {v4, v0, v15}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 106
    const-string v0, "backup_ios_post_processing_timeout_millis"

    invoke-virtual {v4, v0, v12, v13}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 107
    const-string v0, "backup_ios_music_silently_skip_protected"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 108
    const-string v0, "backup_ios_music_skip_protected"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 109
    const-string v0, "backup_ios_music_choose_directory_by_media_type"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 110
    const-string v0, "backup_ios_media_library_music_enabled_file_exts_csv"

    const-string v12, ".mp3,.m4a,.flac,.wav"

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 111
    const-string v0, "backup_ios_media_library_video_enabled_file_exts_csv"

    const-string v12, ".mov,.mp4,.avi,.3gp,.3gpp"

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 112
    const-string v0, "backup_ios_photo_and_video_enabled_file_exts_csv"

    const-string v12, ".jpg,.jpeg,.gif,.bmp,.tiff,.ico,.png,.mov,.mp4,.m4v,.avi,.3gp,.3gpp,.heic"

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 113
    const-string v0, "backup_ios_music_enable_mp3_tagging"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 114
    const-string v0, "backup_ios_music_enable_files_renaming"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 115
    const-string v0, "backup_ios_media_post_processing_should_be_async"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 116
    const-string v0, "backup_ios_media_post_processing_queue_should_have_size_limit"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 117
    const-string v0, "backup_ios_media_post_processing_queue_size_limit"

    const/16 v12, 0xa

    invoke-virtual {v4, v0, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 118
    const-string v0, "backup_enable_app_picker_screen_in_d2d_migrate"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 119
    const-string v0, "backup_usb_fragment_last_screen_timer_millis"

    invoke-virtual {v4, v0, v5}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 120
    const-string v0, "backup_enable_accounts_on_app_picker_screen_in_d2d_migrate"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->n:Lccv;

    .line 121
    const-string v0, "backup_migrate_contact_photo_transfer"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 122
    const-string v0, "backup_migrate_thumbnail_contact_photo_transfer"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 123
    const-string v0, "backup_userdebug_and_eng_builds_should_always_log"

    invoke-virtual {v4, v0, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->o:Lccv;

    .line 124
    const-string v0, "backup_all_builds_should_always_log"

    invoke-virtual {v4, v0, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->p:Lccv;

    .line 125
    const-string v0, "backup_max_get_packages_for_device_retry_calls"

    const/4 v13, 0x2

    invoke-virtual {v4, v0, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v0

    sput-object v0, Land;->q:Lccv;

    .line 126
    const-string v0, "backup_max_get_compatible_packages_retry_calls"

    invoke-virtual {v4, v0, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 127
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    const-string v0, "backup_sleep_between_play_retries_ms"

    invoke-virtual {v4, v0, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v0

    sput-object v0, Land;->r:Lccv;

    .line 129
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 130
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 131
    const-string v0, "backup_sleep_between_play_retries_for_invalid_bundle_ms"

    invoke-virtual {v4, v0, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v0

    sput-object v0, Land;->s:Lccv;

    .line 132
    :try_start_1
    invoke-static {v11, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    move-object v9, v0

    sget-object v0, Land;->ar:Laqd;

    new-array v10, v3, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v6

    const-string v9, "Exception encoding the whitelist item: %s"

    invoke-virtual {v0, v9, v10}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v11

    .line 132
    :goto_1
    nop

    .line 134
    const-string v9, "backup_d2d_source_device_whitelist"

    invoke-virtual {v4, v9, v0}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    sget-object v4, Land;->as:Lcct;

    .line 135
    const-string v0, "backup_d2d_ios_device_whitelist"

    invoke-virtual {v4, v0, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 136
    :try_start_2
    invoke-static {v11, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 133
    :catch_2
    move-exception v0

    move-object v2, v0

    sget-object v0, Land;->ar:Laqd;

    new-array v9, v3, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v6

    invoke-virtual {v0, v1, v9}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v11

    .line 136
    :goto_2
    nop

    .line 138
    const-string v1, "backup_d2d_source_device_blacklist"

    invoke-virtual {v4, v1, v0}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    sget-object v0, Land;->as:Lcct;

    .line 139
    const-string v1, "backup_d2d_ios_device_blacklist"

    invoke-virtual {v0, v1, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 140
    const-string v1, "backup_d2d_backup_blacklist_overflow"

    const-string v2, "co.uk.getmondo,com.clearchannel.iheartradio.controller,com.ebay.kleinanzeigen,com.fivestars.FiveStarsConsumer,com.jv.materialfalcon,com.match.android.matchmobile,com.mobilemotion.dubsmash,com.patreon.android,com.pbs.video,com.pokescanner,com.qualcomm.ltebc_vzw,com.qualcomm.qti.telephonyservice,com.qualcomm.shutdownlistener,com.relayrides.android.relayrides,com.sec.svoice.lang.en_US,com.verizon.vzwavs,com.vzw.apnservice,com.xda.labs,com.xda.labs.play,com.zhihu.android"

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 141
    const-string v1, "backup_should_enable_port_role_switching"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 142
    const-string v1, "backup_enable_d2d_migrate_playlog"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->t:Lccv;

    .line 143
    const-string v1, "backup_send_clearcut_logs_to_server"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->u:Lccv;

    const-wide/16 v1, 0x13b

    .line 144
    const-string v4, "backup_d2d_full_backup_timeout"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    const-wide v1, 0x3fc999999999999aL    # 0.2

    .line 145
    const-string v4, "backup_d2d_throughput_estimate_variance_threshold"

    invoke-static {v0, v4, v1, v2, v6}, Lccv;->a(Lcct;Ljava/lang/String;DZ)V

    .line 146
    const-wide/32 v1, 0x5dc00000

    const-string v4, "backup_d2d_throughput_estimate_in_bytes_per_minute"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 147
    const-string v4, "backup_d2d_throughput_estimate_for_fake_progress_in_bytes_per_minute"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    const-wide/32 v1, 0x1f400000

    .line 148
    const-string v4, "backup_d2d_throughput_estimate_min_bytes_transferred"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 149
    const-string v1, "backup_d2d_app_data_transfer_duration_estimate_in_secs"

    invoke-virtual {v0, v1, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 150
    const-string v1, "backup_d2d_app_data_maximum_consecutive_timeouts"

    invoke-virtual {v0, v1, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 151
    const-string v1, "backup_smart_device_activity_not_shown_timeout_ms"

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v1, v9, v10}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 152
    const/16 v1, 0x4e20

    const-string v2, "backup_d2d_max_contacts_to_restore"

    invoke-virtual {v0, v2, v5}, Lcct;->a(Ljava/lang/String;I)Lccv;

    const/16 v2, 0x1f3

    .line 153
    const-string v4, "backup_d2d_max_operations_per_contacts_batch"

    invoke-virtual {v0, v4, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    const/16 v2, 0x1f4

    .line 154
    const-string v4, "backup_d2d_max_operations_per_call_logs_batch"

    invoke-virtual {v0, v4, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 155
    const-string v2, "backup_d2d_include_ios_starred_contact_info"

    invoke-virtual {v0, v2, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 156
    const-string v2, "backup_d2d_include_ios_im_contact_info"

    invoke-virtual {v0, v2, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 157
    const-string v2, "backup_d2d_include_ios_contact_photo_info"

    invoke-virtual {v0, v2, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 158
    const-string v2, "backup_d2d_include_ios_contact_birthday"

    invoke-virtual {v0, v2, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 159
    const-string v2, "backup_d2d_include_ios_contact_event"

    invoke-virtual {v0, v2, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    const/16 v2, 0x32

    .line 160
    const-string v4, "backup_usb_sender_send_queue_capacity"

    invoke-virtual {v0, v4, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 161
    const-string v2, "backup_power_only_cable_connected_tracker_timeout_ms"

    invoke-virtual {v0, v2, v1}, Lcct;->a(Ljava/lang/String;I)Lccv;

    const-wide/32 v1, 0x927c0

    .line 162
    const-string v4, "backup_ios_read_timeout"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 163
    const-string v1, "backup_ios_backup_additional_files_to_receive"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 164
    const-string v1, "backup_target_transfer_summary_fragment_disable_result_flavors"

    invoke-virtual {v0, v1, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 165
    const-string v1, "backup_max_number_of_data_flavor_errors_to_log"

    invoke-virtual {v0, v1, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 166
    const-string v1, "backup_max_number_of_usb_transport_errors_to_log"

    invoke-virtual {v0, v1, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    const/16 v1, 0x14

    .line 167
    const-string v2, "backup_d2d_fake_progress_update_delay_seconds"

    invoke-virtual {v0, v2, v1}, Lcct;->a(Ljava/lang/String;I)Lccv;

    .line 168
    const-string v1, "backup_do_smart_setup_with_account_deferred"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 169
    const-string v1, "backup_enable_play_setup_service_v2"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->v:Lccv;

    .line 170
    const-string v1, "backup_enable_set_last_modified_date"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 171
    const-string v1, "backup_deferred_blacklist_for_installed_apps"

    invoke-virtual {v0, v1, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 172
    const-string v1, "backup_deferred_whitelist_for_installed_apps"

    invoke-virtual {v0, v1, v11}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    new-array v1, v3, [Ljava/lang/Object;

    .line 173
    const-string v2, "gms.backup.sw_domain"

    const-string v4, "android.googleapis.com"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 174
    const-string v2, "https://%s/backup"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Land;->au:Ljava/lang/String;

    .line 175
    const-string v2, "backup_server_url"

    const-string v4, "https://android.googleapis.com/backup"

    invoke-virtual {v0, v2, v4}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v2

    sput-object v2, Land;->av:Lccv;

    .line 176
    const-string v2, "sidewinder_backup_server_url"

    invoke-virtual {v0, v2, v1}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    move-result-object v1

    sput-object v1, Land;->aw:Lccv;

    .line 177
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5a

    .line 178
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 179
    const-string v4, "backup_cloud_restore_activity_finish_timeout_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->w:Lccv;

    .line 180
    const-string v1, "backup_contacts_restore_operation_retry_times"

    invoke-virtual {v0, v1, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->x:Lccv;

    .line 181
    const-string v1, "backup_enable_cloud_restore_event_logger"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->y:Lccv;

    .line 182
    const-string v1, "backup_restore_contacts_with_cloud_restore_contacts_helper"

    invoke-virtual {v0, v1, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->z:Lccv;

    .line 183
    const-string v1, "backup_estimated_contact_bytes"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->A:Lccv;

    const/4 v1, -0x1

    .line 184
    const-string v2, "backup_server_environment_logging_key"

    invoke-virtual {v0, v2, v1}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->B:Lccv;

    .line 185
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 186
    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 187
    const-string v4, "backup_cloud_restore_transport_switch_backoff_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->C:Lccv;

    .line 188
    const-string v1, "backup_cloud_restore_transport_switch_retries"

    invoke-virtual {v0, v1, v14}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->D:Lccv;

    .line 189
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    .line 190
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 191
    const-string v4, "backup_cloud_restore_transport_switch_timeout_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->E:Lccv;

    .line 192
    const-string v1, "test_backup_device_picker_show_ids"

    invoke-virtual {v0, v1, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->F:Lccv;

    .line 193
    const-string v1, "backup_max_get_devices_attempts"

    invoke-virtual {v0, v1, v14}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->G:Lccv;

    .line 194
    const-string v1, "backup_max_backup_attempts"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->H:Lccv;

    .line 195
    const-string v1, "backup_max_restore_attempts"

    invoke-virtual {v0, v1, v14}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->I:Lccv;

    .line 196
    const-string v1, "backup_max_clear_device_attempts"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->J:Lccv;

    .line 197
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 198
    const-wide/16 v4, 0xa

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 199
    const-string v4, "backup_vault_challenge_request_timeout_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->K:Lccv;

    .line 200
    const-string v1, "backup_crypto_max_bad_guesses"

    invoke-virtual {v0, v1, v12}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->L:Lccv;

    .line 201
    const-string v1, "backup_crypto_lskf_warning_threshold_1"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->M:Lccv;

    .line 202
    const-string v1, "backup_crypto_lskf_warning_threshold_2"

    invoke-virtual {v0, v1, v13}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->N:Lccv;

    .line 203
    const-string v1, "backup_crypto_pattern_minimum_size"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->O:Lccv;

    .line 204
    const-string v1, "backup_crypto_password_minimum_size"

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->P:Lccv;

    .line 205
    const-string v1, "backup_use_start_key_recovery_with_params"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->Q:Lccv;

    .line 206
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 207
    const-wide/16 v4, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string v4, "backup_restoring_screen_timeout_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->R:Lccv;

    .line 208
    const-string v1, "backup_use_pixelmigrate_for_flow_choice"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 209
    const-string v1, "backup_use_pixelmigrate_for_restore_choice"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->S:Lccv;

    .line 210
    const-string v1, "backup_finish_cloud_activity_immediately_if_restore_started"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->T:Lccv;

    .line 211
    const-string v1, "backup_use_new_non_usb_flow"

    invoke-virtual {v0, v1, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->U:Lccv;

    .line 212
    const-string v1, "backup_use_usb_guided_transfer"

    invoke-virtual {v0, v1, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->V:Lccv;

    .line 213
    const-string v1, "backup_use_stub_launcher_during_d2d_restore"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->W:Lccv;

    .line 214
    const-string v1, "backup_use_stub_launcher_during_cloud_restore"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->X:Lccv;

    .line 215
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 216
    const-wide/16 v4, 0x3c

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 217
    const-string v4, "backup_stub_launcher_disable_delay_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->Y:Lccv;

    .line 218
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6

    .line 219
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-string v4, "backup_d2d_migrate_helper_timeout_secs"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->Z:Lccv;

    .line 220
    const-string v1, "backup_use_groups_on_app_picker"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->aa:Lccv;

    .line 221
    const-string v1, "backup_enable_required_apps_on_app_picker"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ab:Lccv;

    .line 222
    const-string v1, "backup_dump_unrestorable_apps"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ac:Lccv;

    .line 223
    const-string v1, "backup_use_groups_on_app_picker_in_d2d"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 224
    const-string v1, "backup_fetch_apps_from_all_accounts_in_cloud_restore"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ad:Lccv;

    .line 225
    const-string v1, "backup_enable_app_picker_in_add_account_flow"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ae:Lccv;

    .line 226
    const-string v1, "backup_disable_d2d_copy_button_if_over_space_limit"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    const-wide v1, 0xc0000000L

    .line 227
    const-string v4, "backup_reserved_bytes_for_d2d"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    .line 228
    const-string v1, "backup_reserved_bytes_for_cloud"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->af:Lccv;

    .line 229
    const-string v1, "backup_should_handle_ios_recoverable_errors"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 230
    const-string v1, "backup_ios_backup_roots_to_fix"

    const-string v2, "/.ba"

    invoke-virtual {v0, v1, v2}, Lcct;->a(Ljava/lang/String;Ljava/lang/String;)Lccv;

    .line 231
    const-string v1, "backup_max_lines_for_titles"

    invoke-virtual {v0, v1, v14}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->ag:Lccv;

    .line 232
    const-string v1, "backup_enable_logging_in_app_picker_host"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ah:Lccv;

    .line 233
    const-string v1, "backup_use_device_id_when_fetching_contacts_backup"

    invoke-virtual {v0, v1, v6}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    .line 234
    const-string v1, "backup_enable_pausing_app_updates_cloud"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ai:Lccv;

    .line 235
    const-string v1, "backup_pause_app_updates_api_retries"

    invoke-virtual {v0, v1, v14}, Lcct;->a(Ljava/lang/String;I)Lccv;

    move-result-object v1

    sput-object v1, Land;->aj:Lccv;

    .line 236
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 237
    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 238
    const-string v4, "backup_pause_app_updates_retry_delay_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->ak:Lccv;

    .line 239
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 240
    const-wide/16 v4, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    const-string v4, "backup_play_service_rebind_delay_millis"

    invoke-virtual {v0, v4, v1, v2}, Lcct;->a(Ljava/lang/String;J)Lccv;

    move-result-object v1

    sput-object v1, Land;->al:Lccv;

    .line 241
    const-string v1, "backup_use_google_auth_util_for_reading_accounts"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->am:Lccv;

    .line 242
    const-string v1, "backup_use_google_auth_util_for_getting_access_token"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->an:Lccv;

    sget-object v0, Land;->as:Lcct;

    .line 243
    const-string v1, "backup_get_android_id_from_checkin_for_pixelmigrate"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ao:Lccv;

    .line 244
    const-string v1, "backup_fallback_to_gservices_when_getting_android_id"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Land;->ap:Lccv;

    .line 245
    const-string v1, "backup_should_pause_app_updates_cloud_restore"

    invoke-virtual {v0, v1, v3}, Lcct;->a(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Land;->aq:Lccv;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lbqb;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 248
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lbqb;->a:Ljava/lang/Boolean;

    :cond_0
    sget-object p0, Lbqb;->a:Ljava/lang/Boolean;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Land;->aw:Lccv;

    .line 250
    invoke-virtual {p0}, Lccv;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p0, Land;->av:Lccv;

    .line 251
    invoke-virtual {p0}, Lccv;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 250
    :goto_0
    return-object p0
.end method

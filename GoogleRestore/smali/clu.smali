.class public final enum Lclu;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum A:Lclu;

.field public static final enum B:Lclu;

.field public static final enum C:Lclu;

.field public static final enum D:Lclu;

.field public static final enum E:Lclu;

.field public static final enum F:Lclu;

.field public static final enum G:Lclu;

.field public static final enum H:Lclu;

.field public static final enum I:Lclu;

.field public static final enum J:Lclu;

.field public static final enum K:Lclu;

.field public static final enum L:Lclu;

.field public static final enum M:Lclu;

.field public static final enum N:Lclu;

.field public static final enum O:Lclu;

.field public static final enum P:Lclu;

.field public static final enum Q:Lclu;

.field public static final enum R:Lclu;

.field public static final enum S:Lclu;

.field private static final synthetic V:[Lclu;

.field public static final enum a:Lclu;

.field public static final enum b:Lclu;

.field public static final enum c:Lclu;

.field public static final enum d:Lclu;

.field public static final enum e:Lclu;

.field public static final enum f:Lclu;

.field public static final enum g:Lclu;

.field public static final enum h:Lclu;

.field public static final enum i:Lclu;

.field public static final enum j:Lclu;

.field public static final enum k:Lclu;

.field public static final enum l:Lclu;

.field public static final enum m:Lclu;

.field public static final enum n:Lclu;

.field public static final enum o:Lclu;

.field public static final enum p:Lclu;

.field public static final enum q:Lclu;

.field public static final enum r:Lclu;

.field public static final enum s:Lclu;

.field public static final enum t:Lclu;

.field public static final enum u:Lclu;

.field public static final enum v:Lclu;

.field public static final enum w:Lclu;

.field public static final enum x:Lclu;

.field public static final enum y:Lclu;

.field public static final enum z:Lclu;


# instance fields
.field public final T:Ljava/lang/String;

.field public final U:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    new-instance v0, Lclu;

    .line 1
    const-string v1, "CONFIG_STATUS_BAR_BACKGROUND"

    const/4 v2, 0x0

    const-string v3, "setup_compat_status_bar_background"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lclu;->a:Lclu;

    new-instance v1, Lclu;

    .line 2
    const-string v3, "CONFIG_LIGHT_STATUS_BAR"

    const/4 v5, 0x1

    const-string v6, "setup_compat_light_status_bar"

    const/4 v7, 0x2

    invoke-direct {v1, v3, v5, v6, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lclu;->b:Lclu;

    new-instance v3, Lclu;

    .line 3
    const-string v6, "CONFIG_NAVIGATION_BAR_BG_COLOR"

    const-string v8, "setup_compat_navigation_bar_bg_color"

    const/4 v9, 0x3

    invoke-direct {v3, v6, v7, v8, v9}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lclu;->c:Lclu;

    new-instance v6, Lclu;

    .line 4
    const-string v8, "CONFIG_FOOTER_BAR_BG_COLOR"

    const-string v10, "setup_compat_footer_bar_bg_color"

    invoke-direct {v6, v8, v9, v10, v9}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lclu;->d:Lclu;

    new-instance v8, Lclu;

    .line 5
    const-string v10, "CONFIG_LIGHT_NAVIGATION_BAR"

    const-string v11, "setup_compat_light_navigation_bar"

    invoke-direct {v8, v10, v4, v11, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lclu;->e:Lclu;

    new-instance v10, Lclu;

    .line 6
    const-string v11, "CONFIG_FOOTER_BUTTON_FONT_FAMILY"

    const/4 v12, 0x5

    const-string v13, "setup_compat_footer_button_font_family"

    invoke-direct {v10, v11, v12, v13, v12}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lclu;->f:Lclu;

    new-instance v11, Lclu;

    .line 7
    const-string v13, "CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER"

    const/4 v14, 0x6

    const-string v15, "setup_compat_footer_button_icon_add_another"

    invoke-direct {v11, v13, v14, v15, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lclu;->g:Lclu;

    new-instance v13, Lclu;

    .line 8
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_CANCEL"

    const/4 v7, 0x7

    const-string v2, "setup_compat_footer_button_icon_cancel"

    invoke-direct {v13, v15, v7, v2, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lclu;->h:Lclu;

    new-instance v2, Lclu;

    .line 9
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_CLEAR"

    const/16 v5, 0x8

    const-string v12, "setup_compat_footer_button_icon_clear"

    invoke-direct {v2, v15, v5, v12, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lclu;->i:Lclu;

    new-instance v12, Lclu;

    .line 10
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_DONE"

    const/16 v5, 0x9

    const-string v9, "setup_compat_footer_button_icon_done"

    invoke-direct {v12, v15, v5, v9, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lclu;->j:Lclu;

    new-instance v9, Lclu;

    .line 11
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_NEXT"

    const/16 v5, 0xa

    const-string v7, "setup_compat_footer_button_icon_next"

    invoke-direct {v9, v15, v5, v7, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lclu;->k:Lclu;

    new-instance v7, Lclu;

    .line 12
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_OPT_IN"

    const/16 v5, 0xb

    const-string v14, "setup_compat_footer_button_icon_opt_in"

    invoke-direct {v7, v15, v5, v14, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->l:Lclu;

    new-instance v14, Lclu;

    .line 13
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_SKIP"

    const/16 v5, 0xc

    move-object/from16 v16, v7

    const-string v7, "setup_compat_footer_button_icon_skip"

    invoke-direct {v14, v15, v5, v7, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lclu;->m:Lclu;

    new-instance v7, Lclu;

    .line 14
    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_STOP"

    const/16 v5, 0xd

    move-object/from16 v17, v14

    const-string v14, "setup_compat_footer_button_icon_stop"

    invoke-direct {v7, v15, v5, v14, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->n:Lclu;

    new-instance v14, Lclu;

    .line 15
    const-string v15, "CONFIG_FOOTER_BUTTON_PADDING_TOP"

    const/16 v5, 0xe

    const-string v4, "setup_compat_footer_button_padding_top"

    move-object/from16 v18, v7

    const/4 v7, 0x6

    invoke-direct {v14, v15, v5, v4, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lclu;->o:Lclu;

    new-instance v4, Lclu;

    .line 16
    const-string v15, "CONFIG_FOOTER_BUTTON_PADDING_BOTTOM"

    const/16 v5, 0xf

    move-object/from16 v19, v14

    const-string v14, "setup_compat_footer_button_padding_bottom"

    invoke-direct {v4, v15, v5, v14, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->p:Lclu;

    new-instance v14, Lclu;

    .line 17
    const-string v15, "CONFIG_FOOTER_BUTTON_RADIUS"

    const/16 v5, 0x10

    move-object/from16 v20, v4

    const-string v4, "setup_compat_footer_button_radius"

    invoke-direct {v14, v15, v5, v4, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lclu;->q:Lclu;

    new-instance v4, Lclu;

    .line 18
    const-string v7, "CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA"

    const/16 v15, 0x11

    const-string v5, "setup_compat_footer_button_ripple_alpha"

    move-object/from16 v21, v14

    const/4 v14, 0x7

    invoke-direct {v4, v7, v15, v5, v14}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->r:Lclu;

    new-instance v5, Lclu;

    .line 19
    const-string v7, "CONFIG_FOOTER_BUTTON_TEXT_SIZE"

    const/16 v14, 0x12

    const-string v15, "setup_compat_footer_button_text_size"

    move-object/from16 v22, v4

    const/4 v4, 0x6

    invoke-direct {v5, v7, v14, v15, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->s:Lclu;

    new-instance v4, Lclu;

    .line 20
    const-string v7, "CONFIG_FOOTER_BUTTON_DISABLED_ALPHA"

    const/16 v15, 0x13

    const-string v14, "setup_compat_footer_button_disabled_alpha"

    move-object/from16 v23, v5

    const/4 v5, 0x7

    invoke-direct {v4, v7, v15, v14, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->t:Lclu;

    new-instance v5, Lclu;

    .line 21
    const-string v7, "CONFIG_FOOTER_BUTTON_DISABLED_BG_COLOR"

    const/16 v14, 0x14

    const-string v15, "setup_compat_footer_button_disabled_bg_color"

    move-object/from16 v24, v4

    const/4 v4, 0x3

    invoke-direct {v5, v7, v14, v15, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->u:Lclu;

    new-instance v7, Lclu;

    .line 22
    const-string v15, "CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR"

    const/16 v14, 0x15

    move-object/from16 v25, v5

    const-string v5, "setup_compat_footer_primary_button_bg_color"

    invoke-direct {v7, v15, v14, v5, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->v:Lclu;

    new-instance v5, Lclu;

    .line 23
    const-string v15, "CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR"

    const/16 v14, 0x16

    move-object/from16 v26, v7

    const-string v7, "setup_compat_footer_primary_button_text_color"

    invoke-direct {v5, v15, v14, v7, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->w:Lclu;

    new-instance v7, Lclu;

    .line 24
    const-string v14, "CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR"

    const/16 v15, 0x17

    move-object/from16 v27, v5

    const-string v5, "setup_compat_footer_secondary_button_bg_color"

    invoke-direct {v7, v14, v15, v5, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->x:Lclu;

    new-instance v5, Lclu;

    .line 25
    const-string v14, "CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR"

    const/16 v15, 0x18

    move-object/from16 v28, v7

    const-string v7, "setup_compat_footer_secondary_button_text_color"

    invoke-direct {v5, v14, v15, v7, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->y:Lclu;

    new-instance v7, Lclu;

    .line 26
    const-string v14, "CONFIG_LAYOUT_BACKGROUND_COLOR"

    const/16 v15, 0x19

    move-object/from16 v29, v5

    const-string v5, "setup_design_layout_bg_color"

    invoke-direct {v7, v14, v15, v5, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->z:Lclu;

    new-instance v5, Lclu;

    .line 27
    const-string v14, "CONFIG_HEADER_TEXT_COLOR"

    const/16 v15, 0x1a

    move-object/from16 v30, v7

    const-string v7, "setup_design_header_text_color"

    invoke-direct {v5, v14, v15, v7, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->A:Lclu;

    new-instance v4, Lclu;

    .line 28
    const-string v7, "CONFIG_HEADER_TEXT_SIZE"

    const/16 v14, 0x1b

    const-string v15, "setup_design_header_text_size"

    move-object/from16 v31, v5

    const/4 v5, 0x6

    invoke-direct {v4, v7, v14, v15, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->B:Lclu;

    new-instance v5, Lclu;

    .line 29
    const-string v7, "CONFIG_HEADER_FONT_FAMILY"

    const/16 v14, 0x1c

    const-string v15, "setup_design_header_font_family"

    move-object/from16 v32, v4

    const/4 v4, 0x5

    invoke-direct {v5, v7, v14, v15, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->C:Lclu;

    new-instance v7, Lclu;

    .line 30
    const-string v14, "CONFIG_LAYOUT_GRAVITY"

    const/16 v15, 0x1d

    move-object/from16 v33, v5

    const-string v5, "setup_design_layout_gravity"

    invoke-direct {v7, v14, v15, v5, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->D:Lclu;

    new-instance v4, Lclu;

    .line 31
    const-string v5, "CONFIG_HEADER_AREA_BACKGROUND_COLOR"

    const/16 v14, 0x1e

    const-string v15, "setup_design_header_area_background_color"

    move-object/from16 v34, v7

    const/4 v7, 0x3

    invoke-direct {v4, v5, v14, v15, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->E:Lclu;

    new-instance v5, Lclu;

    .line 32
    const-string v7, "CONFIG_DESCRIPTION_TEXT_SIZE"

    const/16 v14, 0x1f

    const-string v15, "setup_design_description_text_size"

    move-object/from16 v35, v4

    const/4 v4, 0x6

    invoke-direct {v5, v7, v14, v15, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->F:Lclu;

    new-instance v4, Lclu;

    .line 33
    const-string v7, "CONFIG_DESCRIPTION_TEXT_COLOR"

    const/16 v14, 0x20

    const-string v15, "setup_design_description_text_color"

    move-object/from16 v36, v5

    const/4 v5, 0x3

    invoke-direct {v4, v7, v14, v15, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->G:Lclu;

    new-instance v7, Lclu;

    .line 34
    const-string v14, "CONFIG_DESCRIPTION_LINK_TEXT_COLOR"

    const/16 v15, 0x21

    move-object/from16 v37, v4

    const-string v4, "setup_design_description_link_text_color"

    invoke-direct {v7, v14, v15, v4, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->H:Lclu;

    new-instance v4, Lclu;

    .line 35
    const-string v5, "CONFIG_DESCRIPTION_FONT_FAMILY"

    const/16 v14, 0x22

    const-string v15, "setup_design_description_font_family"

    move-object/from16 v38, v7

    const/4 v7, 0x5

    invoke-direct {v4, v5, v14, v15, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->I:Lclu;

    new-instance v5, Lclu;

    .line 36
    const-string v7, "CONFIG_CONTENT_TEXT_SIZE"

    const/16 v14, 0x23

    const-string v15, "setup_design_content_text_size"

    move-object/from16 v39, v4

    const/4 v4, 0x6

    invoke-direct {v5, v7, v14, v15, v4}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->J:Lclu;

    new-instance v4, Lclu;

    .line 37
    const-string v7, "CONFIG_CONTENT_TEXT_COLOR"

    const/16 v14, 0x24

    const-string v15, "setup_design_content_text_color"

    move-object/from16 v40, v5

    const/4 v5, 0x3

    invoke-direct {v4, v7, v14, v15, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->K:Lclu;

    new-instance v7, Lclu;

    .line 38
    const-string v14, "CONFIG_CONTENT_LINK_TEXT_COLOR"

    const/16 v15, 0x25

    move-object/from16 v41, v4

    const-string v4, "setup_design_content_link_text_color"

    invoke-direct {v7, v14, v15, v4, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->L:Lclu;

    new-instance v4, Lclu;

    .line 39
    const-string v5, "CONFIG_CONTENT_FONT_FAMILY"

    const/16 v14, 0x26

    const-string v15, "setup_design_content_font_family"

    move-object/from16 v42, v7

    const/4 v7, 0x5

    invoke-direct {v4, v5, v14, v15, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->M:Lclu;

    new-instance v5, Lclu;

    .line 40
    const-string v14, "CONFIG_CONTENT_LAYOUT_GRAVITY"

    const/16 v15, 0x27

    move-object/from16 v43, v4

    const-string v4, "setup_design_content_layout_gravity"

    invoke-direct {v5, v14, v15, v4, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lclu;->N:Lclu;

    new-instance v4, Lclu;

    .line 41
    const-string v7, "CONFIG_PROGRESS_ILLUSTRATION_DEFAULT"

    const/16 v14, 0x28

    const-string v15, "progress_illustration_custom_default"

    move-object/from16 v44, v5

    const/16 v5, 0x8

    invoke-direct {v4, v7, v14, v15, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->O:Lclu;

    new-instance v7, Lclu;

    .line 42
    const-string v14, "CONFIG_PROGRESS_ILLUSTRATION_ACCOUNT"

    const/16 v15, 0x29

    move-object/from16 v45, v4

    const-string v4, "progress_illustration_custom_account"

    invoke-direct {v7, v14, v15, v4, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->P:Lclu;

    new-instance v4, Lclu;

    .line 43
    const-string v14, "CONFIG_PROGRESS_ILLUSTRATION_CONNECTION"

    const/16 v15, 0x2a

    move-object/from16 v46, v7

    const-string v7, "progress_illustration_custom_connection"

    invoke-direct {v4, v14, v15, v7, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->Q:Lclu;

    new-instance v7, Lclu;

    .line 44
    const-string v14, "CONFIG_PROGRESS_ILLUSTRATION_UPDATE"

    const/16 v15, 0x2b

    move-object/from16 v47, v4

    const-string v4, "progress_illustration_custom_update"

    invoke-direct {v7, v14, v15, v4, v5}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lclu;->R:Lclu;

    new-instance v4, Lclu;

    .line 45
    const-string v5, "CONFIG_PROGRESS_ILLUSTRATION_DISPLAY_MINIMUM_MS"

    const/16 v14, 0x2c

    const-string v15, "progress_illustration_display_minimum_ms"

    move-object/from16 v48, v7

    const/4 v7, 0x1

    invoke-direct {v4, v5, v14, v15, v7}, Lclu;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lclu;->S:Lclu;

    const/16 v5, 0x2d

    new-array v5, v5, [Lclu;

    const/4 v14, 0x0

    aput-object v0, v5, v14

    aput-object v1, v5, v7

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v11, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v2, v5, v0

    const/16 v0, 0x9

    aput-object v12, v5, v0

    const/16 v0, 0xa

    aput-object v9, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v17, v5, v0

    const/16 v0, 0xd

    aput-object v18, v5, v0

    const/16 v0, 0xe

    aput-object v19, v5, v0

    const/16 v0, 0xf

    aput-object v20, v5, v0

    const/16 v0, 0x10

    aput-object v21, v5, v0

    const/16 v0, 0x11

    aput-object v22, v5, v0

    const/16 v0, 0x12

    aput-object v23, v5, v0

    const/16 v0, 0x13

    aput-object v24, v5, v0

    const/16 v0, 0x14

    aput-object v25, v5, v0

    const/16 v0, 0x15

    aput-object v26, v5, v0

    const/16 v0, 0x16

    aput-object v27, v5, v0

    const/16 v0, 0x17

    aput-object v28, v5, v0

    const/16 v0, 0x18

    aput-object v29, v5, v0

    const/16 v0, 0x19

    aput-object v30, v5, v0

    const/16 v0, 0x1a

    aput-object v31, v5, v0

    const/16 v0, 0x1b

    aput-object v32, v5, v0

    const/16 v0, 0x1c

    aput-object v33, v5, v0

    const/16 v0, 0x1d

    aput-object v34, v5, v0

    const/16 v0, 0x1e

    aput-object v35, v5, v0

    const/16 v0, 0x1f

    aput-object v36, v5, v0

    const/16 v0, 0x20

    aput-object v37, v5, v0

    const/16 v0, 0x21

    aput-object v38, v5, v0

    const/16 v0, 0x22

    aput-object v39, v5, v0

    const/16 v0, 0x23

    aput-object v40, v5, v0

    const/16 v0, 0x24

    aput-object v41, v5, v0

    const/16 v0, 0x25

    aput-object v42, v5, v0

    const/16 v0, 0x26

    aput-object v43, v5, v0

    const/16 v0, 0x27

    aput-object v44, v5, v0

    const/16 v0, 0x28

    aput-object v45, v5, v0

    const/16 v0, 0x29

    aput-object v46, v5, v0

    const/16 v0, 0x2a

    aput-object v47, v5, v0

    const/16 v0, 0x2b

    aput-object v48, v5, v0

    const/16 v0, 0x2c

    aput-object v4, v5, v0

    sput-object v5, Lclu;->V:[Lclu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lclu;->T:Ljava/lang/String;

    iput p4, p0, Lclu;->U:I

    return-void
.end method

.method public static values()[Lclu;
    .locals 1

    sget-object v0, Lclu;->V:[Lclu;

    .line 47
    invoke-virtual {v0}, [Lclu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclu;

    return-object v0
.end method

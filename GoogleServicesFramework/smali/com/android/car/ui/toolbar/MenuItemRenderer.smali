.class Lcom/android/car/ui/toolbar/MenuItemRenderer;
.super Ljava/lang/Object;
.source "MenuItemRenderer.java"

# interfaces
.implements Lcom/android/car/ui/toolbar/MenuItem$Listener;


# static fields
.field private static final RESTRICTED_STATE:[I


# instance fields
.field private mIconContainer:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private final mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

.field private final mMenuItemIconSize:I

.field private final mParentView:Landroid/view/ViewGroup;

.field private mSwitch:Landroid/widget/Switch;

.field private mTextView:Landroid/widget/TextView;

.field private mTextWithIconView:Landroid/widget/TextView;

.field private mToolbarState:Lcom/android/car/ui/toolbar/Toolbar$State;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 54
    sget v1, Lcom/android/car/ui/R$attr;->state_ux_restricted:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->RESTRICTED_STATE:[I

    return-void
.end method

.method constructor <init>(Lcom/android/car/ui/toolbar/MenuItem;Landroid/view/ViewGroup;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    .line 71
    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mParentView:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/car/ui/toolbar/MenuItem;->setListener(Lcom/android/car/ui/toolbar/MenuItem$Listener;)V

    .line 74
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/car/ui/R$dimen;->car_ui_toolbar_menu_item_icon_size:I

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItemIconSize:I

    return-void
.end method

.method private synthetic lambda$createView$0(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 99
    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    .line 101
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_menu_item_icon_container:I

    .line 102
    invoke-static {p2, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mIconContainer:Landroid/view/View;

    .line 103
    iget-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_menu_item_icon:I

    invoke-static {p2, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mIconView:Landroid/widget/ImageView;

    .line 104
    iget-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_menu_item_switch:I

    invoke-static {p2, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mSwitch:Landroid/widget/Switch;

    .line 105
    iget-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_menu_item_text:I

    invoke-static {p2, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextView:Landroid/widget/TextView;

    .line 106
    iget-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_menu_item_text_with_icon:I

    .line 107
    invoke-static {p2, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextWithIconView:Landroid/widget/TextView;

    .line 109
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->updateView()V

    .line 110
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$readMenuItem$2(Ljava/lang/reflect/Method;Landroid/app/Activity;Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 249
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 251
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t call the MenuItem\'s listener"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$updateView$1(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->performClick()V

    return-void
.end method

.method private static readMenuItem(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/android/car/ui/toolbar/MenuItem;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "MenuItem"

    .line 215
    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 219
    :try_start_0
    sget v5, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_id:I

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 220
    sget v6, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_title:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 221
    sget v7, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_icon:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 222
    sget v8, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_search:I

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 223
    sget v10, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_settings:I

    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 224
    sget v11, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_tinted:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 225
    sget v13, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_visible:I

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 226
    sget v14, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_showIconAndTitle:I

    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 228
    sget v15, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_checkable:I

    invoke-virtual {v1, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 229
    sget v2, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_checked:I

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 230
    sget v12, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_checked:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 231
    sget v4, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_activatable:I

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move/from16 v16, v4

    .line 232
    sget v4, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_activated:I

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 233
    sget v9, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_activated:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    move/from16 v18, v4

    .line 234
    sget v4, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_displayBehavior:I

    move/from16 v19, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move/from16 v20, v2

    .line 235
    sget v2, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_uxRestrictions:I

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 236
    sget v9, Lcom/android/car/ui/R$styleable;->CarUiToolbarMenuItem_onClick:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_1

    move-object/from16 v21, v1

    .line 240
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/car/ui/utils/CarUiUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    move/from16 v22, v12

    .line 246
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move/from16 v23, v15

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const-class v24, Lcom/android/car/ui/toolbar/MenuItem;

    const/16 v17, 0x0

    aput-object v24, v15, v17

    invoke-virtual {v12, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 247
    new-instance v15, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;

    invoke-direct {v15, v12, v1}, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;-><init>(Ljava/lang/reflect/Method;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnClick method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(MenuItem) not found in your activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t find an activity for the MenuItem"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v21, v1

    move/from16 v22, v12

    move/from16 v23, v15

    const/4 v15, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 261
    sget-object v1, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->ALWAYS:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    goto :goto_1

    .line 262
    :cond_2
    sget-object v1, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->NEVER:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    .line 264
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    const/4 v4, 0x3

    const/4 v9, 0x0

    .line 265
    invoke-interface {v0, v4, v9, v3}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static/range {p0 .. p0}, Lcom/android/car/ui/toolbar/MenuItem;->builder(Landroid/content/Context;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v5}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setId(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 269
    invoke-virtual {v0, v6}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 270
    invoke-virtual {v0, v7}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 271
    invoke-virtual {v0, v15}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setOnClickListener(Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 272
    invoke-virtual {v0, v2}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setUxRestrictions(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 273
    invoke-virtual {v0, v11}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setTinted(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 274
    invoke-virtual {v0, v13}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setVisible(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 275
    invoke-virtual {v0, v14}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setShowIconAndTitle(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 276
    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setDisplayBehavior(Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    if-eqz v8, :cond_3

    .line 279
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setToSearch()Lcom/android/car/ui/toolbar/MenuItem$Builder;

    :cond_3
    if-eqz v10, :cond_4

    .line 283
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setToSettings()Lcom/android/car/ui/toolbar/MenuItem$Builder;

    :cond_4
    if-nez v23, :cond_5

    if-eqz v22, :cond_6

    :cond_5
    move/from16 v1, v20

    .line 287
    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setChecked(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    :cond_6
    if-nez v16, :cond_7

    if-eqz v19, :cond_8

    :cond_7
    move/from16 v1, v18

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setActivated(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 294
    :cond_8
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->build()Lcom/android/car/ui/toolbar/MenuItem;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v21, v1

    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    throw v0
.end method

.method static readMenuItemList(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/car/ui/toolbar/MenuItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 192
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 200
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "MenuItems"

    .line 201
    invoke-interface {p1, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 203
    invoke-static {p0, p1, v0}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->readMenuItem(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/android/car/ui/toolbar/MenuItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 207
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 195
    :try_start_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 208
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to parse Menu Items"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private recursiveSetEnabledAndDrawableState(Landroid/view/View;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->RESTRICTED_STATE:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 177
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    .line 178
    :cond_1
    instance-of v1, p1, Lcom/android/car/ui/uxr/DrawableStateView;

    if-eqz v1, :cond_2

    .line 179
    move-object v1, p1

    check-cast v1, Lcom/android/car/ui/uxr/DrawableStateView;

    invoke-interface {v1, v0}, Lcom/android/car/ui/uxr/DrawableStateView;->setDrawableState([I)V

    .line 182
    :cond_2
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 183
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 184
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->recursiveSetEnabledAndDrawableState(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updateView()V
    .locals 8

    .line 115
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/MenuItem;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 121
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 123
    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->isShowingIconAndTitle()Z

    move-result v3

    .line 124
    iget-object v4, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v4}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v4

    .line 126
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v5}, Lcom/android/car/ui/toolbar/MenuItem;->isVisible()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    .line 127
    invoke-virtual {v5}, Lcom/android/car/ui/toolbar/MenuItem;->isSearch()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mToolbarState:Lcom/android/car/ui/toolbar/Toolbar$State;

    sget-object v7, Lcom/android/car/ui/toolbar/Toolbar$State;->SEARCH:Lcom/android/car/ui/toolbar/Toolbar$State;

    if-eq v5, v7, :cond_a

    :cond_2
    if-nez v4, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto/16 :goto_4

    .line 132
    :cond_3
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v7}, Lcom/android/car/ui/toolbar/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mIconContainer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextWithIconView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v5, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setVisibility(I)V

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 143
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItemIconSize:I

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextWithIconView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextWithIconView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextWithIconView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 148
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mIconContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v3}, Lcom/android/car/ui/toolbar/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/MenuItem;->isTinted()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 156
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 159
    :cond_7
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->recursiveSetEnabledAndDrawableState(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v1}, Lcom/android/car/ui/toolbar/MenuItem;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->getOnClickListener()Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    .line 163
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    .line 164
    invoke-virtual {v0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivatable()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    .line 165
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$ql8WLabAg_CiY9HcQTI4ML8FsgY;

    invoke-direct {v1, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$ql8WLabAg_CiY9HcQTI4ML8FsgY;-><init>(Lcom/android/car/ui/toolbar/MenuItemRenderer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void

    .line 129
    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method createView(Landroidx/core/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 97
    sget v1, Lcom/android/car/ui/R$layout;->car_ui_toolbar_menu_item:I

    iget-object v2, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mParentView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;

    invoke-direct {v3, p0, p1}, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;-><init>(Lcom/android/car/ui/toolbar/MenuItemRenderer;Landroidx/core/util/Consumer;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method public synthetic lambda$createView$0$MenuItemRenderer(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->lambda$createView$0(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public synthetic lambda$updateView$1$MenuItemRenderer(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->lambda$updateView$1(Landroid/view/View;)V

    return-void
.end method

.method public onMenuItemChanged(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->updateView()V

    return-void
.end method

.method setCarUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/MenuItem;->setCarUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method setToolbarState(Lcom/android/car/ui/toolbar/Toolbar$State;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mToolbarState:Lcom/android/car/ui/toolbar/Toolbar$State;

    .line 81
    iget-object p1, p0, Lcom/android/car/ui/toolbar/MenuItemRenderer;->mMenuItem:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {p1}, Lcom/android/car/ui/toolbar/MenuItem;->isSearch()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->updateView()V

    :cond_0
    return-void
.end method

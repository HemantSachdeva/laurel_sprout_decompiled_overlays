.class public final Lcom/android/car/ui/toolbar/MenuItem$Builder;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private mIsActivatable:Z

.field private mIsActivated:Z

.field private mIsCheckable:Z

.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mIsSearch:Z

.field private mIsSettings:Z

.field private mIsTinted:Z

.field private mIsVisible:Z

.field private mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

.field private mSearchIcon:Landroid/graphics/drawable/Drawable;

.field private mSearchTitle:Ljava/lang/String;

.field private mSettingsIcon:Landroid/graphics/drawable/Drawable;

.field private mSettingsTitle:Ljava/lang/String;

.field private mShowIconAndTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUxRestrictions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 317
    iput v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mId:I

    .line 321
    sget-object v0, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->ALWAYS:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsTinted:Z

    const/4 v1, 0x0

    .line 323
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    .line 324
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsEnabled:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsCheckable:Z

    .line 326
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsChecked:Z

    .line 327
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsVisible:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    .line 329
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivated:Z

    .line 330
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSearch:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSettings:Z

    .line 332
    iput v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mUxRestrictions:I

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Landroid/content/Context;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/car/ui/toolbar/MenuItem$Builder;)I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivated:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSearch:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsTinted:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/car/ui/toolbar/MenuItem$Builder;)I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mUxRestrictions:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsCheckable:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsChecked:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/android/car/ui/toolbar/MenuItem;
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only simple icons can be activatable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsCheckable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 347
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported options for a checkable MenuItem"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSearch:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSettings:Z

    if-nez v0, :cond_4

    goto :goto_2

    .line 350
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t have both a search and settings MenuItem"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    sget-object v1, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->NEVER:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 353
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Activatable MenuItems not supported as Overflow"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSearch:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSearchTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsCheckable:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsTinted:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    sget-object v1, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->ALWAYS:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    if-ne v0, v1, :cond_8

    goto :goto_4

    .line 363
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid search MenuItem"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 366
    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSettings:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSettingsTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsCheckable:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsTinted:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    sget-object v1, Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;->ALWAYS:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    if-ne v0, v1, :cond_a

    goto :goto_5

    .line 373
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid settings MenuItem"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 376
    :cond_b
    :goto_5
    new-instance v0, Lcom/android/car/ui/toolbar/MenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ui/toolbar/MenuItem;-><init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;Lcom/android/car/ui/toolbar/MenuItem$1;)V

    return-object v0
.end method

.method public setActivatable()Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivatable:Z

    return-object p0
.end method

.method public setActivated(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 450
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setActivatable()Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 451
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsActivated:Z

    return-object p0
.end method

.method public setCheckable()Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsCheckable:Z

    return-object p0
.end method

.method public setChecked(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 505
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setCheckable()Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 506
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsChecked:Z

    return-object p0
.end method

.method public setDisplayBehavior(Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    return-object p0
.end method

.method public setIcon(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setId(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 381
    iput p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mId:I

    return-object p0
.end method

.method public setOnClickListener(Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    return-object p0
.end method

.method public setShowIconAndTitle(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 469
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mShowIconAndTitle:Z

    return-object p0
.end method

.method public setTinted(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsTinted:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setToSearch()Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/car/ui/R$string;->car_ui_toolbar_menu_item_search_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSearchTitle:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_icon_search:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSearch:Z

    .line 533
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSearchTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 534
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSearchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    return-object p0
.end method

.method public setToSettings()Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/car/ui/R$string;->car_ui_toolbar_menu_item_settings_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSettingsTitle:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_icon_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsSettings:Z

    .line 551
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSettingsTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    .line 552
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    const/16 v0, 0x40

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->setUxRestrictions(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;

    return-object p0
.end method

.method public setUxRestrictions(I)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 516
    iput p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mUxRestrictions:I

    return-object p0
.end method

.method public setVisible(Z)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem$Builder;->mIsVisible:Z

    return-object p0
.end method

.class public Lcom/android/car/ui/recyclerview/CarUiContentListItem;
.super Lcom/android/car/ui/recyclerview/CarUiListItem;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;,
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;,
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;,
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field private mBody:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsActionDividerVisible:Z

.field private mIsActivated:Z

.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mOnCheckedChangeListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;

.field private mOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

.field private mPrimaryIconType:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

.field private mSupplementalIcon:Landroid/graphics/drawable/Drawable;

.field private mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiListItem;-><init>()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsEnabled:Z

    .line 121
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 122
    sget-object p1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->STANDARD:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mPrimaryIconType:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    return-object p0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mBody:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    return-object p0
.end method

.method public getPrimaryIconType()Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mPrimaryIconType:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-object p0
.end method

.method public getSupplementalIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->ICON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mSupplementalIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSupplementalIconOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mSupplementalIconOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isActionDividerVisible()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsActionDividerVisible:Z

    return p0
.end method

.method public isActivated()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsActivated:Z

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsChecked:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsEnabled:Z

    return p0
.end method

.method public setActivated(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsActivated:Z

    return-void
.end method

.method public setBody(Ljava/lang/CharSequence;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mBody:Ljava/lang/CharSequence;

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->CHECK_BOX:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->SWITCH:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-ne v0, v1, :cond_2

    .line 245
    :cond_1
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsChecked:Z

    .line 247
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mOnCheckedChangeListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {v0, p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Z)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsEnabled:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnItemClickedListener(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

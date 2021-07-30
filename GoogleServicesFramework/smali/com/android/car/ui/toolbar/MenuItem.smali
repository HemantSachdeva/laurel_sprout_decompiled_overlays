.class public Lcom/android/car/ui/toolbar/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/toolbar/MenuItem$Listener;,
        Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;,
        Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;,
        Lcom/android/car/ui/toolbar/MenuItem$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

.field private mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private final mIsActivatable:Z

.field private mIsActivated:Z

.field private final mIsCheckable:Z

.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private final mIsSearch:Z

.field private final mIsTinted:Z

.field private mIsVisible:Z

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/ui/toolbar/MenuItem$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

.field private final mShowIconAndTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUxRestrictions:I


# direct methods
.method private constructor <init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mListener:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$000(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$100(Lcom/android/car/ui/toolbar/MenuItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mId:I

    .line 78
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$200(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsCheckable:Z

    .line 79
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$300(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivatable:Z

    .line 80
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$400(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 81
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$500(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$600(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    .line 83
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$700(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    .line 84
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$800(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsEnabled:Z

    .line 85
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$900(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsChecked:Z

    .line 86
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1000(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsVisible:Z

    .line 87
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1100(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivated:Z

    .line 88
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1200(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsSearch:Z

    .line 89
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1300(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mShowIconAndTitle:Z

    .line 90
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1400(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsTinted:Z

    .line 91
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1500(Lcom/android/car/ui/toolbar/MenuItem$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mUxRestrictions:I

    .line 93
    iget-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getInstance(Landroid/content/Context;)Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getCurrentRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;Lcom/android/car/ui/toolbar/MenuItem$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/MenuItem;-><init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 1

    .line 578
    new-instance v0, Lcom/android/car/ui/toolbar/MenuItem$Builder;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private update()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/MenuItem$Listener;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0}, Lcom/android/car/ui/toolbar/MenuItem$Listener;->onMenuItemChanged(Lcom/android/car/ui/toolbar/MenuItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayBehavior()Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mId:I

    return p0
.end method

.method public getOnClickListener()Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isActivatable()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivatable:Z

    return p0
.end method

.method public isActivated()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivated:Z

    return p0
.end method

.method public isCheckable()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsCheckable:Z

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsChecked:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsEnabled:Z

    return p0
.end method

.method isRestricted()Z
    .locals 1

    .line 250
    iget v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mUxRestrictions:I

    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-static {v0, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->isRestricted(ILandroid/car/drivingstate/CarUxRestrictions;)Z

    move-result p0

    return p0
.end method

.method isSearch()Z
    .locals 0

    .line 305
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsSearch:Z

    return p0
.end method

.method public isShowingIconAndTitle()Z
    .locals 0

    .line 230
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mShowIconAndTitle:Z

    return p0
.end method

.method public isTinted()Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsTinted:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsVisible:Z

    return p0
.end method

.method public performClick()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 261
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/car/ui/R$string;->car_ui_restricted_while_driving:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivatable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivated()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem;->setActivated(Z)V

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem;->setChecked(Z)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    if-eqz v0, :cond_4

    .line 275
    invoke-interface {v0, p0}, Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;->onClick(Lcom/android/car/ui/toolbar/MenuItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivated:Z

    .line 191
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    return-void

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call setActivated() on a non-activatable MenuItem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setCarUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result v0

    .line 242
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 244
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsChecked:Z

    .line 150
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    return-void

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call setChecked() on a non-checkable MenuItem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setListener(Lcom/android/car/ui/toolbar/MenuItem$Listener;)V
    .locals 1

    .line 611
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsVisible:Z

    .line 166
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    return-void
.end method

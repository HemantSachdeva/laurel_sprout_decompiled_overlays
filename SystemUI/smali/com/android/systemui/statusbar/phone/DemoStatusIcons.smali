.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private mColor:I

.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mMobileViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/StatusBarMobileView;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusIcons:Landroid/widget/LinearLayout;

.field private mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 57
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 60
    instance-of p2, p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p2, :cond_0

    .line 61
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isRestrictingIcons()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 66
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x10

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 71
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 291
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private matchingMobileView(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .locals 4

    .line 276
    instance-of v0, p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 280
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private updateColors()V
    .locals 3

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 87
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 88
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 167
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v1, p2

    const/4 p2, 0x0

    move v0, p2

    .line 170
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v7, 0x1

    if-ge v0, v2, :cond_5

    .line 171
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 172
    instance-of v4, v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v4, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 176
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p3, :cond_3

    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p0

    .line 182
    iput-boolean v7, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 183
    iget-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 184
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 185
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    return-void

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_2
    if-nez p3, :cond_7

    if-eq v0, v3, :cond_6

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_6
    return-void

    .line 196
    :cond_7
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Demo"

    move-object v0, v8

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 197
    iput-boolean v7, v8, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 198
    new-instance p3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    .line 199
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p3, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 201
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 202
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 4

    const-string v0, "DemoStatusIcons"

    const-string v1, "addDemoWifiView: "

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    .line 212
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 213
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 214
    instance-of v3, v3, Lcom/android/systemui/statusbar/StatusBarMobileView;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 221
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 222
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setStaticDrawableColor(I)V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 2

    const-string v0, "DemoStatusIcons"

    const-string v1, "addMobileView: "

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 240
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setStaticDrawableColor(I)V

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->createLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v0, :cond_15

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "volume"

    .line 103
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v3, "vibrate"

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_ringer_vibrate:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 107
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string p1, "zen"

    .line 109
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "dnd"

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_dnd:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 112
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    const-string p1, "bluetooth"

    .line 114
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "connected"

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_bluetooth_connected:I

    goto :goto_2

    :cond_6
    move v0, v2

    .line 118
    :goto_2
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    const-string p1, "location"

    .line 120
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "show"

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x1080669

    goto :goto_3

    :cond_8
    move v0, v2

    .line 124
    :goto_3
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    const-string p1, "alarm"

    .line 126
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_alarm:I

    goto :goto_4

    :cond_a
    move p1, v2

    :goto_4
    const-string v0, "alarm_clock"

    .line 130
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    const-string p1, "tty"

    .line 132
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_tty_mode:I

    goto :goto_5

    :cond_c
    move v0, v2

    .line 136
    :goto_5
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    const-string p1, "mute"

    .line 138
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x1080076

    goto :goto_6

    :cond_e
    move v0, v2

    .line 142
    :goto_6
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    const-string p1, "speakerphone"

    .line 144
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x1080087

    goto :goto_7

    :cond_10
    move v0, v2

    .line 148
    :goto_7
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_11
    const-string p1, "cast"

    .line 150
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_cast:I

    goto :goto_8

    :cond_12
    move v0, v2

    .line 153
    :goto_8
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_13
    const-string p1, "hotspot"

    .line 155
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 157
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    .line 158
    :cond_14
    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_15
    :goto_9
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-static {p1, v0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 301
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 302
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V
    .locals 2

    .line 263
    invoke-interface {p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    goto :goto_0

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->matchingMobileView(Lcom/android/systemui/statusbar/StatusIconDisplayable;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public remove()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateColors()V

    return-void
.end method

.method public updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 4

    const-string v0, "DemoStatusIcons"

    const-string v1, "updateMobileState: "

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 252
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iget v3, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, v3, :cond_0

    .line 253
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    return-void
.end method

.method public updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2

    const-string v0, "DemoStatusIcons"

    const-string v1, "updateWifiState: "

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mWifiView:Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :goto_0
    return-void
.end method

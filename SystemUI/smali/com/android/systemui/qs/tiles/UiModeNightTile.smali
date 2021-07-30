.class public Lcom/android/systemui/qs/tiles/UiModeNightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "UiModeNightTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# static fields
.field public static formatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh:mm a"

    .line 50
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const p1, 0x1080517

    .line 51
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 62
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    .line 63
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 145
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.DARK_THEME_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6aa

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1, v0}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 9

    .line 95
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 101
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v5, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_battery_saver:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_1
    if-nez p2, :cond_3

    .line 103
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 104
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v1, :cond_2

    .line 106
    sget v5, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_until_sunrise:I

    goto :goto_1

    .line 107
    :cond_2
    sget v5, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_on_at_sunset:I

    .line 105
    :goto_1
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_3
    if-ne p2, v4, :cond_7

    .line 109
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz v1, :cond_4

    .line 112
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v5}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v5

    goto :goto_2

    .line 114
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v5}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v5

    .line 116
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v1, :cond_5

    .line 117
    sget v7, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_until:I

    goto :goto_3

    .line 118
    :cond_5
    sget v7, Lcom/android/systemui/R$string;->quick_settings_dark_mode_secondary_label_on_at:I

    :goto_3
    new-array v8, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_6

    .line 119
    invoke-virtual {v5}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_6
    sget-object p2, Lcom/android/systemui/qs/tiles/UiModeNightTile;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p2, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    :goto_4
    aput-object p2, v8, v3

    .line 116
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_7
    const/4 p2, 0x0

    .line 121
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 123
    :goto_5
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 124
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_ui_mode_night_label:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 125
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 126
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x2

    if-eqz p0, :cond_8

    .line 127
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    goto :goto_6

    :cond_8
    new-array p0, v4, [Ljava/lang/CharSequence;

    .line 128
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v1, p0, v3

    const-string v1, ", "

    aput-object v1, p0, v2

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    aput-object v1, p0, p2

    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_6
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 130
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_7

    .line 132
    :cond_9
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p0, :cond_a

    move v2, p2

    :cond_a
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 134
    :goto_7
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    .line 135
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 80
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

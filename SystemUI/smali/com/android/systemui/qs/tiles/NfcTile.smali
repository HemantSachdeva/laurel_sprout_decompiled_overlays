.class public Lcom/android/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mListening:Z

.field private mNfcReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 144
    new-instance p1, Lcom/android/systemui/qs/tiles/NfcTile$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/android/systemui/qs/tiles/NfcTile;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method private getAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_nfc_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_nfc_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 81
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.NFC_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x320

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_nfc_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :goto_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleClick()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mListening:Z

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p2

    if-nez p2, :cond_1

    move v0, v1

    goto :goto_1

    .line 111
    :cond_1
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    :cond_2
    :goto_1
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 113
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_3

    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_nfc_enabled:I

    goto :goto_2

    :cond_3
    sget p2, Lcom/android/systemui/R$drawable;->ic_qs_nfc_disabled:I

    .line 112
    :goto_2
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 114
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->quick_settings_nfc_label:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 115
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 116
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 55
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

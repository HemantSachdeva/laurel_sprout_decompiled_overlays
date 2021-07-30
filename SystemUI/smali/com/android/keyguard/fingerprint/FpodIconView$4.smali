.class Lcom/android/keyguard/fingerprint/FpodIconView$4;
.super Landroid/database/ContentObserver;
.source "FpodIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodIconView;Landroid/os/Handler;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$4;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$4;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1000(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    return-void
.end method

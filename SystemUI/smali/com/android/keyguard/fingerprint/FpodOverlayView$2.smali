.class Lcom/android/keyguard/fingerprint/FpodOverlayView$2;
.super Landroid/os/AsyncTask;
.source "FpodOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/fingerprint/FpodOverlayView;->addViewAndUpdateAlpha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->access$600(Lcom/android/keyguard/fingerprint/FpodOverlayView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 301
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->access$702(Lcom/android/keyguard/fingerprint/FpodOverlayView;F)F

    .line 307
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->access$800(Lcom/android/keyguard/fingerprint/FpodOverlayView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->access$900(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V

    .line 310
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->this$0:Lcom/android/keyguard/fingerprint/FpodOverlayView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodOverlayView;->access$1000(Lcom/android/keyguard/fingerprint/FpodOverlayView;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/fingerprint/FpodOverlayView$2;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method

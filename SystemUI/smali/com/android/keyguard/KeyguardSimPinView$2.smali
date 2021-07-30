.class Lcom/android/keyguard/KeyguardSimPinView$2;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Landroid/telephony/PinResult;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimCheckResponse  dummy One result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPinView"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v0

    if-ltz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)V

    :cond_0
    return-void
.end method

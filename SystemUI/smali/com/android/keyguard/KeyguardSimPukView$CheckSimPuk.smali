.class abstract Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 357
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 358
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 359
    iput p4, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Landroid/telephony/PinResult;)V
.end method

.method public run()V
    .locals 4

    const-string v0, "KeyguardSimPukView"

    const-string v1, "call supplyPukReportResult()"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 368
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mSubId:I

    .line 369
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->supplyPukReportPinResult(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Error result for supplyPukReportResult."

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 381
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supplyPukReportResult returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;Landroid/telephony/PinResult;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

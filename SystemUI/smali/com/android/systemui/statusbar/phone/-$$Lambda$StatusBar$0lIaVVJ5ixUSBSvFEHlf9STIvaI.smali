.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0lIaVVJ5ixUSBSvFEHlf9STIvaI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0lIaVVJ5ixUSBSvFEHlf9STIvaI;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$0lIaVVJ5ixUSBSvFEHlf9STIvaI;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$executeActionDismissingKeyguard$29(Ljava/lang/Runnable;)V

    return-void
.end method

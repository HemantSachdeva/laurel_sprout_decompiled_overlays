.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$ocPGzZroHlWVjf71npt1p2ugzmo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$ocPGzZroHlWVjf71npt1p2ugzmo;->f$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$ocPGzZroHlWVjf71npt1p2ugzmo;->f$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$onAttachedToWindow$0$QuickStatusBarHeader(Ljava/lang/Integer;)V

    return-void
.end method

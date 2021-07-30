.class public final synthetic Lcom/google/android/systemui/-$$Lambda$cjq7UMkdxOAxRlgIxKqH11Vsoe8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/-$$Lambda$cjq7UMkdxOAxRlgIxKqH11Vsoe8;->f$0:Lcom/google/android/systemui/OpaLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/-$$Lambda$cjq7UMkdxOAxRlgIxKqH11Vsoe8;->f$0:Lcom/google/android/systemui/OpaLayout;

    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getOpaEnabled()Z

    return-void
.end method

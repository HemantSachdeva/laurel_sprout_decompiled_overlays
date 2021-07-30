.class Lcom/google/android/systemui/OpaLayout$1;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->access$000(Lcom/google/android/systemui/OpaLayout;)V

    .line 195
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout$1;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/OpaLayout;->access$100(Lcom/google/android/systemui/OpaLayout;)V

    return-void
.end method

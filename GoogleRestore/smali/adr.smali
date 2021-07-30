.class public final synthetic Ladr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladr;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ladr;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u()V

    return-void
.end method

.class public final synthetic Ladu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladu;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ladu;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    new-instance v1, Lamb;

    invoke-direct {v1}, Lamb;-><init>()V

    const-string v2, "FRAGMENT"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u()V

    return-void
.end method

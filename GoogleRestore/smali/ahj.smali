.class public final Lahj;
.super Lacu;
.source "PG"

# interfaces
.implements Lahk;


# instance fields
.field final synthetic a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    const-string v0, "com.google.android.apps.pixelmigrate.cloudrestore.service.IContactsRestoreCallbacks"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    iput-object p1, p0, Lahj;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    .line 1
    const-string p1, "com.google.android.apps.pixelmigrate.cloudrestore.service.IContactsRestoreCallbacks"

    invoke-direct {p0, p1}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lahj;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->c(Z)V

    return-void
.end method

.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 4
    invoke-static {p2}, Lacv;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lahj;->a(Z)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

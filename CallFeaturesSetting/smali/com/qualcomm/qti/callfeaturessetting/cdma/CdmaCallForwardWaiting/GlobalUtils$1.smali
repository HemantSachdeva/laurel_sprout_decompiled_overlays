.class Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$1;
.super Ljava/lang/Object;
.source "GlobalUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils;->showMissingPermissionDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/GlobalUtils$1;->val$context:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

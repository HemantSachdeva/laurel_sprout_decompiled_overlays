.class Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;->this$0:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 217
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;->this$0:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    invoke-static {p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->access$000(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;->this$0:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    invoke-static {p1}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->access$000(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;->this$0:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    invoke-static {v0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->access$100(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference$1;->this$0:Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;

    invoke-static {p0}, Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;->access$200(Lcom/qualcomm/qti/callfeaturessetting/cdma/CdmaCallForwardWaiting/EditPhoneNumberPreference;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

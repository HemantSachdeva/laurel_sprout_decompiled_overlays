.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 167
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 171
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_wipe:I

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    .line 171
    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_dontwipe:I

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 173
    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 176
    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 178
    iput-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    invoke-static {p1, p2}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$000(Landroid/content/Context;I)V

    .line 186
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 189
    invoke-static {}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$100()Landroid/app/ProgressDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 190
    invoke-static {}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$100()Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 191
    invoke-static {}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$100()Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 192
    invoke-static {}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$100()Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 193
    invoke-static {}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$100()Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
.super Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.source "NotificationIconDozeHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$integer;->doze_small_icon_alpha:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 0

    return-void
.end method

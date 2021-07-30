.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnConfigurationChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 3868
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 3868
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 3872
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 3874
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3877
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$12002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    return-void
.end method

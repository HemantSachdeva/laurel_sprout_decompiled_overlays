.class public Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;
.super Landroid/app/Activity;
.source "AutoTermsPreferenceActivity.java"


# static fields
.field private static final INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.common.AUTOMOTIVE_WEBVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->openTermsOfServiceLink()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->openPrivacyPolicyLink()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$AutoTermsPreferenceActivity(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->lambda$onCreate$0(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$AutoTermsPreferenceActivity(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->lambda$onCreate$1(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    return-void
.end method

.method protected launchBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->INTENT:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "title"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "url"

    .line 85
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "^https://policies.google.com/(.*)/embedded(.*)$"

    const/4 v1, 0x2

    .line 90
    invoke-static {p2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "whitelist"

    .line 91
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0051

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0901c1

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/car/ui/toolbar/Toolbar;

    const v0, 0x7f0f004e

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/car/ui/toolbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    sget-object v0, Lcom/android/car/ui/toolbar/Toolbar$State;->SUBPAGE:Lcom/android/car/ui/toolbar/Toolbar$State;

    invoke-virtual {p1, v0}, Lcom/android/car/ui/toolbar/Toolbar;->setState(Lcom/android/car/ui/toolbar/Toolbar$State;)V

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;

    invoke-direct {v0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter;-><init>(Ljava/util/List;)V

    .line 56
    new-instance v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->NONE:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    invoke-direct {v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;)V

    const v2, 0x7f0f0051

    .line 57
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setBody(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v2, Lcom/google/android/gsf/settings/-$$Lambda$AutoTermsPreferenceActivity$92iVMzFp6C78CJo2VMspwIGKYxw;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/settings/-$$Lambda$AutoTermsPreferenceActivity$92iVMzFp6C78CJo2VMspwIGKYxw;-><init>(Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setOnItemClickedListener(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    sget-object v2, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->NONE:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    invoke-direct {v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;-><init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;)V

    const v2, 0x7f0f0050

    .line 62
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setBody(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v2, Lcom/google/android/gsf/settings/-$$Lambda$AutoTermsPreferenceActivity$BSN1lL8ivuDJjYO9tQ04o3hmLxk;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/settings/-$$Lambda$AutoTermsPreferenceActivity$BSN1lL8ivuDJjYO9tQ04o3hmLxk;-><init>(Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->setOnItemClickedListener(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0901b1

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    .line 67
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected openPrivacyPolicyLink()V
    .locals 2

    const v0, 0x7f0f0050

    .line 77
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://policies.google.com/privacy/embedded?color_scheme=dark"

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->launchBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected openTermsOfServiceLink()V
    .locals 2

    const v0, 0x7f0f0051

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://policies.google.com/terms/embedded?color_scheme=dark"

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/settings/AutoTermsPreferenceActivity;->launchBrowser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

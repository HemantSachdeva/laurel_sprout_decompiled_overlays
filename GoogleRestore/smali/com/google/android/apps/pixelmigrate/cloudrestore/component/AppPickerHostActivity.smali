.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;
.super Lbc;
.source "PG"

# interfaces
.implements Lakn;
.implements Lakt;


# static fields
.field public static final j:Lacw;


# instance fields
.field public k:Laoz;

.field public l:Ladg;

.field private m:Landroid/os/AsyncTask;

.field private final n:Ljava/util/concurrent/ThreadPoolExecutor;

.field private o:Lada;

.field private p:Landroid/accounts/Account;

.field private q:Lakk;

.field private r:Z

.field private s:Z

.field private t:Ladf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AppPickerHost"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lbc;-><init>()V

    .line 3
    const/16 v0, 0x9

    invoke-static {v0}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ladf;

    .line 4
    invoke-direct {v0, p0}, Ladf;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->t:Ladf;

    sget-object v0, Ladg;->a:Ladg;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->l:Ladg;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->r:Z

    return-void
.end method

.method private final a(Lba;Ljava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    new-array p2, v1, [Ljava/lang/Object;

    .line 9
    const-string v0, "Activity paused so ignoring fragment change"

    invoke-virtual {p1, v0, p2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Showing next fragment: %s"

    invoke-virtual {v0, v4, v3}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v3

    .line 12
    const v4, 0x7f0a00d9

    invoke-virtual {v3, v4}, Lbx;->b(I)Lba;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Already showing %s, doing nothing."

    invoke-virtual {v0, p1, p2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {v3}, Lbx;->a()Lch;

    move-result-object v0

    invoke-virtual {v0, v4, p1, p2}, Lch;->a(ILba;Ljava/lang/String;)V

    invoke-virtual {v0}, Lch;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 17
    const-string v4, "Apps have been fetched by the sidecar: %d apps"

    invoke-virtual {v0, v4, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    if-nez p1, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 17
    :goto_1
    iput v3, v0, Laoz;->a:I

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 21
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->o:Lada;

    iput-object v0, p1, Lada;->a:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->s:Z

    .line 25
    new-instance p1, Lahu;

    .line 26
    invoke-direct {p1}, Lahu;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string v2, "show_skip"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v1, 0x7f11004c

    .line 29
    const-string v2, "button_text_resource"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {p1, v0}, Lba;->d(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "APP_PICKER_FRAGMENT_V2"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->a(Lba;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 20
    sget-object v0, Lavk;->e:Lavk;

    invoke-virtual {p1, v0}, Laoz;->a(Lavk;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->f()V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->o:Lada;

    iput-object p1, v0, Lada;->a:Ljava/util/Map;

    .line 32
    new-instance p1, Lamb;

    invoke-direct {p1}, Lamb;-><init>()V

    const-string v0, "FRAGMENT"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->a(Lba;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->o:Lada;

    .line 33
    invoke-virtual {p1}, Lada;->b()Lcsl;

    move-result-object p1

    .line 34
    invoke-static {p1}, Laqe;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Laoz;->b:I

    .line 36
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 37
    sget-object v0, Lavk;->f:Lavk;

    invoke-virtual {p1, v0}, Laoz;->a(Lavk;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->f()V

    return-void

    .line 39
    :cond_0
    new-instance v0, Ladh;

    invoke-direct {v0, p0, p0, p1}, Ladh;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->m:Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->o:Lada;

    iput-object p1, v0, Lada;->a:Ljava/util/Map;

    return-void
.end method

.method public final f()V
    .locals 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "Not finishing activity because it has already been destroyed."

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->setResult(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    new-instance v0, Lcnq;

    .line 41
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcnq;-><init>(Lcnr;)V

    const v1, 0x7f1201c7

    iput v1, v0, Lcnq;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcnq;->b:Z

    .line 42
    invoke-virtual {v0}, Lcnq;->a()Lcnr;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcnr;->a(Landroid/content/Intent;)I

    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->setTheme(I)V

    .line 45
    invoke-super {p0, p1}, Lbc;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Laoz;

    new-instance v2, Lapm;

    const-string v3, "ANDROID_BACKUP"

    invoke-direct {v2, p0, v3}, Lapm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Laoz;-><init>(Lapm;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 47
    sget-object v0, Land;->ae:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 48
    sget-object v0, Lavk;->b:Lavk;

    invoke-virtual {p1, v0}, Laoz;->a(Lavk;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->f()V

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->o:Lada;

    iput-boolean v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->r:Z

    const v0, 0x7f0d00d7

    .line 51
    invoke-virtual {p0, v0}, Lsi;->setContentView(I)V

    if-nez p1, :cond_1

    .line 52
    new-instance p1, Lamb;

    invoke-direct {p1}, Lamb;-><init>()V

    const-string v0, "FRAGMENT"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->a(Lba;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    nop

    .line 53
    const-string v0, "has_shown_app_picker"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->s:Z

    .line 52
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->s:Z

    if-nez p1, :cond_6

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->p:Landroid/accounts/Account;

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 55
    const-string v1, "Account is empty, quitting."

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 56
    sget-object v0, Lavk;->c:Lavk;

    invoke-virtual {p1, v0}, Laoz;->a(Lavk;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->f()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->t:Ladf;

    iget-object p1, p1, Ladf;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;

    .line 58
    new-instance v0, Lapj;

    invoke-direct {v0, p1}, Lapj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lapj;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 59
    const-string v1, "Ancestral id is empty, quitting."

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 60
    sget-object v0, Lavk;->d:Lavk;

    invoke-virtual {p1, v0}, Laoz;->a(Lavk;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->f()V

    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object p1

    .line 63
    invoke-static {p1}, Laku;->a(Lbx;)Laku;

    move-result-object v0

    check-cast v0, Lakk;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->q:Lakk;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    new-array v5, v4, [Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->p:Landroid/accounts/Account;

    aput-object v6, v5, v1

    iget-wide v6, v0, Lakk;->b:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_4

    new-instance v6, Ljava/util/HashSet;

    iget-object v0, v0, Lakk;->a:Ljava/util/List;

    .line 64
    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    .line 65
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    .line 66
    sget-object v5, Lavi;->q:Lavi;

    sget-object v6, Lavh;->I:Lavh;

    .line 67
    invoke-virtual {v0, v5, v6}, Laoz;->a(Lavi;Lavh;)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->p:Landroid/accounts/Account;

    new-array v4, v4, [Landroid/accounts/Account;

    aput-object v0, v4, v1

    new-instance v0, Lakk;

    .line 68
    invoke-direct {v0}, Lakk;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    .line 69
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v5, "android_id"

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    const-string v2, "accounts"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 72
    invoke-virtual {v0, v1}, Lba;->d(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->q:Lakk;

    .line 73
    invoke-virtual {p1}, Lbx;->a()Lch;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->q:Lakk;

    .line 74
    const-string v1, "APP_FETCHER_SIDECAR"

    invoke-virtual {p1, v0, v1}, Lch;->a(Lba;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lch;->b()V

    :cond_5
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->q:Lakk;

    iput-object p0, p1, Laku;->d:Lakt;

    iget-object p1, p1, Laku;->aa:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->a(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 77
    invoke-super {p0}, Lbc;->onDestroy()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->m:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->m:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 80
    invoke-super {p0}, Lbc;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->r:Z

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->q:Lakk;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Laku;->d:Lakt;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->r:Z

    .line 81
    invoke-super {p0}, Lbc;->onResume()V

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->q:Lakk;

    if-eqz v0, :cond_1

    iget-object v1, v0, Laku;->aa:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->a(Ljava/util/List;)V

    return-void

    :cond_0
    iput-object p0, v0, Laku;->d:Lakt;

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->s:Z

    .line 83
    const-string v1, "has_shown_app_picker"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-super {p0, p1}, Lbc;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

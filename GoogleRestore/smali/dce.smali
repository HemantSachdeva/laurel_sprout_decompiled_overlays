.class public final synthetic Ldce;
.super Ljava/lang/Object;

# interfaces
.implements Lbpd;


# instance fields
.field private final a:Lcom/google/firebase/crash/FirebaseCrash;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/crash/FirebaseCrash;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldce;->a:Lcom/google/firebase/crash/FirebaseCrash;

    iput-boolean p2, p0, Ldce;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ldce;->a:Lcom/google/firebase/crash/FirebaseCrash;

    iget-boolean v1, p0, Ldce;->b:Z

    check-cast p1, Ljava/lang/Void;

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ldci;->c:Ldci;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/google/firebase/crash/FirebaseCrash;->b:Landroid/content/Context;

    const-string v0, "FirebaseCrashSharedPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "firebase_crash_collection_enabled"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

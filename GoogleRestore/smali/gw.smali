.class public final Lgw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lgw;

.field public static final b:Lgw;

.field public static final c:Lgw;

.field public static final d:Lgw;

.field public static final e:Lgw;

.field public static final f:Lgw;

.field public static final g:Lgw;


# instance fields
.field final h:Ljava/lang/Object;

.field public final i:I

.field public final j:Ljava/lang/Class;

.field public final k:Lhi;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgw;

    .line 1
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 2
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 3
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 4
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 5
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 6
    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 7
    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 8
    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    const-class v1, Lhb;

    .line 9
    const/16 v2, 0x100

    invoke-direct {v0, v2, v1}, Lgw;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lgw;

    const-class v1, Lhb;

    .line 10
    const/16 v2, 0x200

    invoke-direct {v0, v2, v1}, Lgw;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lgw;

    const-class v1, Lhc;

    .line 11
    const/16 v2, 0x400

    invoke-direct {v0, v2, v1}, Lgw;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lgw;

    const-class v1, Lhc;

    .line 12
    const/16 v2, 0x800

    invoke-direct {v0, v2, v1}, Lgw;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lgw;

    .line 13
    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    sput-object v0, Lgw;->a:Lgw;

    new-instance v0, Lgw;

    .line 14
    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    sput-object v0, Lgw;->b:Lgw;

    new-instance v0, Lgw;

    .line 15
    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 16
    const v1, 0x8000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    .line 17
    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    new-instance v0, Lgw;

    const-class v1, Lhg;

    .line 18
    const/high16 v2, 0x20000

    invoke-direct {v0, v2, v1}, Lgw;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lgw;

    .line 19
    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    sput-object v0, Lgw;->c:Lgw;

    new-instance v0, Lgw;

    .line 20
    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    sput-object v0, Lgw;->d:Lgw;

    new-instance v0, Lgw;

    .line 21
    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lgw;-><init>(I)V

    sput-object v0, Lgw;->e:Lgw;

    new-instance v0, Lgw;

    const-class v1, Lhh;

    .line 22
    const/high16 v2, 0x200000

    invoke-direct {v0, v2, v1}, Lgw;-><init>(ILjava/lang/Class;)V

    new-instance v0, Lgw;

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x1020036

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const-class v2, Lhe;

    .line 27
    const v4, 0x1020037

    invoke-direct {v0, v1, v4, v3, v2}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x1020038

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    sput-object v0, Lgw;->f:Lgw;

    new-instance v0, Lgw;

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x1020039

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x102003a

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    sput-object v0, Lgw;->g:Lgw;

    new-instance v0, Lgw;

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x102003b

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 37
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    .line 57
    :cond_0
    move-object v1, v3

    .line 37
    :goto_0
    const v4, 0x1020046

    invoke-direct {v0, v1, v4, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 39
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    .line 57
    :cond_1
    move-object v1, v3

    .line 39
    :goto_1
    const v4, 0x1020047

    invoke-direct {v0, v1, v4, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 41
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    .line 57
    :cond_2
    move-object v1, v3

    .line 41
    :goto_2
    const v4, 0x1020048

    invoke-direct {v0, v1, v4, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_3

    .line 43
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    .line 57
    :cond_3
    move-object v1, v3

    .line 43
    :goto_3
    const v2, 0x1020049

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x102003c

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x102003d

    const-class v4, Lhf;

    invoke-direct {v0, v1, v2, v3, v4}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x1020042

    const-class v4, Lhd;

    invoke-direct {v0, v1, v2, v3, v4}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x1020044

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x1020045

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_4

    .line 55
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PRESS_AND_HOLD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4

    .line 57
    :cond_4
    move-object v1, v3

    .line 55
    :goto_4
    const v4, 0x102004a

    invoke-direct {v0, v1, v4, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    new-instance v0, Lgw;

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    .line 57
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_IME_ENTER:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    const v2, 0x1020054

    invoke-direct {v0, v1, v2, v3, v3}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, v0}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Class;)V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, p2}, Lgw;-><init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILhi;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgw;->i:I

    iput-object p3, p0, Lgw;->k:Lhi;

    .line 60
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object p1, p0, Lgw;->h:Ljava/lang/Object;

    iput-object p4, p0, Lgw;->j:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lgw;->h:Ljava/lang/Object;

    .line 66
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, p0, Lgw;->h:Ljava/lang/Object;

    .line 68
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 62
    :cond_0
    instance-of v1, p1, Lgw;

    if-nez v1, :cond_1

    return v0

    .line 63
    :cond_1
    check-cast p1, Lgw;

    iget-object v1, p0, Lgw;->h:Ljava/lang/Object;

    iget-object p1, p1, Lgw;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    return v0

    .line 64
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    .line 63
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lgw;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

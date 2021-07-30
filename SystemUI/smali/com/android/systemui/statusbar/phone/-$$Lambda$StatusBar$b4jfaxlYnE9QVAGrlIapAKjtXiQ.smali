.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$b4jfaxlYnE9QVAGrlIapAKjtXiQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$maybeEscalateHeadsUp$13(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

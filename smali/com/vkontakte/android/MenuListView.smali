.class public Lcom/vkontakte/android/MenuListView;
.super Landroid/widget/FrameLayout;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/MenuListView$Listener;,
        Lcom/vkontakte/android/MenuListView$MenuAdapter;,
        Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;
    }
.end annotation


# static fields
.field public static counters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static lastInstance:Lcom/vkontakte/android/MenuListView;

.field public static reminderIntent:Landroid/content/Intent;

.field private static reminderText:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

.field private audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private icons:[I

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field public itemPadding:I

.field private items:[Ljava/lang/String;

.field public list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private listener:Lcom/vkontakte/android/MenuListView$Listener;

.field private playerShadow:Landroid/graphics/drawable/Drawable;

.field private playerView:Landroid/view/View;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private touchInPlayer:Z

.field private userName:Ljava/lang/String;

.field private userPhoto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_profile"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u043e\u0438 \u0414\u0440\u0443\u0437\u044c\u044f"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u043e\u0438 \u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u043e\u0438 \u0412\u0438\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u043e\u0438 \u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u041c\u043e\u0438 \u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u041c\u043e\u0438 \u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041c\u043e\u0438 \u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041c\u043e\u0438 \u0417\u0430\u043a\u043b\u0430\u0434\u043a\u0438"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 55
    iput-boolean v3, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 61
    const v1, 0x7f0200fe

    aput v1, v0, v4

    .line 62
    const v1, 0x7f02010d

    aput v1, v0, v5

    .line 63
    const v1, 0x7f020110

    aput v1, v0, v6

    .line 64
    const v1, 0x7f020107

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 65
    const v2, 0x7f020104

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 66
    const v2, 0x7f020101

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 67
    const v2, 0x7f02010a

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 68
    const v2, 0x7f0200fb

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 71
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 126
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_profile"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u043e\u0438 \u0414\u0440\u0443\u0437\u044c\u044f"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u043e\u0438 \u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u043e\u0438 \u0412\u0438\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u043e\u0438 \u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u041c\u043e\u0438 \u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u041c\u043e\u0438 \u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041c\u043e\u0438 \u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041c\u043e\u0438 \u0417\u0430\u043a\u043b\u0430\u0434\u043a\u0438"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 55
    iput-boolean v3, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 61
    const v1, 0x7f0200fe

    aput v1, v0, v4

    .line 62
    const v1, 0x7f02010d

    aput v1, v0, v5

    .line 63
    const v1, 0x7f020110

    aput v1, v0, v6

    .line 64
    const v1, 0x7f020107

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 65
    const v2, 0x7f020104

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 66
    const v2, 0x7f020101

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 67
    const v2, 0x7f02010a

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 68
    const v2, 0x7f0200fb

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 71
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_profile"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u043e\u0438 \u0414\u0440\u0443\u0437\u044c\u044f"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u043e\u0438 \u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u043e\u0438 \u0412\u0438\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u043e\u0438 \u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u041c\u043e\u0438 \u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u041c\u043e\u0438 \u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041c\u043e\u0438 \u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u041c\u043e\u0438 \u0417\u0430\u043a\u043b\u0430\u0434\u043a\u0438"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 55
    iput-boolean v3, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 61
    const v1, 0x7f0200fe

    aput v1, v0, v4

    .line 62
    const v1, 0x7f02010d

    aput v1, v0, v5

    .line 63
    const v1, 0x7f020110

    aput v1, v0, v6

    .line 64
    const v1, 0x7f020107

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 65
    const v2, 0x7f020104

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 66
    const v2, 0x7f020101

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 67
    const v2, 0x7f02010a

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 68
    const v2, 0x7f0200fb

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 71
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 136
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 137
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MenuListView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/MenuListView;)[I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    return-object v0
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 141
    .local v0, "d":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 142
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 144
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030029

    invoke-static {v1, v2, v5}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    .line 145
    new-instance v1, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v2, Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 160
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setHeaderDividersEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalScrollBarEnabled(Z)V

    .line 163
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v2, Lcom/vkontakte/android/MenuListView$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$3;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v1, v2, v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "username"

    const-string v3, "DELETED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateBirthdays()V

    .line 194
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v2, 0x7f0600ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/MenuListView$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$4;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v2, 0x7f0600ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/MenuListView$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$5;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 352
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 353
    const-string v1, "vk"

    const-string v2, "on attached"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/MenuListView$6;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$6;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 358
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 359
    sput-object p0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 367
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 368
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v3

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v3, v4, v1}, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 371
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 372
    return-void

    .line 368
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 376
    const-string v0, "vk"

    const-string v1, "on detached"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 383
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/MenuListView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/MenuListView$Listener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    .line 408
    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, "_friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v0, Lcom/vkontakte/android/MenuListView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/MenuListView$7;-><init>(Lcom/vkontakte/android/MenuListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public updateBirthdays()V
    .locals 22

    .prologue
    .line 293
    const/16 v17, 0x0

    sput-object v17, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/cache/FriendsCache;->getBirthdays(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 295
    .local v4, "bdays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 297
    const/high16 v17, 0x42200000    # 40.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    .line 298
    .local v11, "psize":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v9, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v14, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 302
    .local v5, "date":Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 303
    .local v13, "today":Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/32 v19, 0x5265c00

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 304
    .local v6, "date2":Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 306
    .local v16, "yesterday":Ljava/lang/String;
    const/4 v7, 0x0

    .line 307
    .local v7, "hasToday":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    if-eqz v7, :cond_9

    const v17, 0x7f0901af

    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 331
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 332
    new-instance v8, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-class v18, Lcom/vkontakte/android/WallActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v8, "nIntent":Landroid/content/Intent;
    const-string v18, "wall_id"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    :goto_2
    sput-object v8, Lcom/vkontakte/android/MenuListView;->reminderIntent:Landroid/content/Intent;

    .line 348
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "date2":Ljava/util/Date;
    .end local v7    # "hasToday":Z
    .end local v8    # "nIntent":Landroid/content/Intent;
    .end local v9    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "psize":I
    .end local v13    # "today":Ljava/lang/String;
    .end local v14    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v16    # "yesterday":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 349
    return-void

    .line 307
    .restart local v5    # "date":Ljava/util/Date;
    .restart local v6    # "date2":Ljava/util/Date;
    .restart local v7    # "hasToday":Z
    .restart local v9    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "psize":I
    .restart local v13    # "today":Ljava/lang/String;
    .restart local v14    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v16    # "yesterday":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    .line 309
    .local v10, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/4 v7, 0x1

    .line 311
    :cond_2
    if-eqz v7, :cond_3

    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    :cond_3
    if-nez v7, :cond_5

    :cond_4
    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_5
    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\\."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, "ss":[Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 315
    .local v15, "year":I
    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090011

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 322
    :goto_3
    if-lez v15, :cond_6

    .line 323
    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v18

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x76c

    move/from16 v18, v0

    sub-int v3, v18, v15

    .line 324
    .local v3, "age":I
    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", "

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0a0039

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 326
    .end local v3    # "age":I
    :cond_6
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 317
    :cond_7
    iget-object v0, v10, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0901b3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto :goto_3

    .line 320
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x0

    aget-object v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0001

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v12, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto/16 :goto_3

    .line 328
    .end local v10    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v12    # "ss":[Ljava/lang/String;
    .end local v15    # "year":I
    :cond_9
    const v17, 0x7f0901b0

    goto/16 :goto_1

    .line 335
    :cond_a
    new-instance v8, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-class v18, Lcom/vkontakte/android/UserListActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .restart local v8    # "nIntent":Landroid/content/Intent;
    const-string v17, "type"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v17, "users"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 338
    const-string v17, "extended"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v17, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0901b2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$8;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method public updateUserInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 290
    return-void
.end method

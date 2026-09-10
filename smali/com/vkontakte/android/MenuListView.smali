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

.field public static reminderInfo:Landroid/os/Bundle;

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

.field public list:Landroid/widget/ListView;

.field private listener:Lcom/vkontakte/android/MenuListView$Listener;

.field private playerShadow:Landroid/graphics/drawable/Drawable;

.field private playerView:Landroid/view/View;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchBox:Landroid/view/View;

.field private touchInPlayer:Z

.field private userName:Ljava/lang/String;

.field private userPhoto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

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

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 60
    iput-boolean v3, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 67
    const v1, 0x7f02013f

    aput v1, v0, v4

    .line 68
    const v1, 0x7f020150

    aput v1, v0, v5

    .line 69
    const v1, 0x7f020158

    aput v1, v0, v6

    .line 70
    const v1, 0x7f020149

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 71
    const v2, 0x7f020146

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const v2, 0x7f020142

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 73
    const v2, 0x7f02014c

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 74
    const v2, 0x7f02013c

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 75
    const v2, 0x7f020139

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 76
    const v2, 0x7f020155

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 79
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 155
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 156
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

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 60
    iput-boolean v3, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 67
    const v1, 0x7f02013f

    aput v1, v0, v4

    .line 68
    const v1, 0x7f020150

    aput v1, v0, v5

    .line 69
    const v1, 0x7f020158

    aput v1, v0, v6

    .line 70
    const v1, 0x7f020149

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 71
    const v2, 0x7f020146

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const v2, 0x7f020142

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 73
    const v2, 0x7f02014c

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 74
    const v2, 0x7f02013c

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 75
    const v2, 0x7f020139

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 76
    const v2, 0x7f020155

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 79
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 160
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 161
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

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 60
    iput-boolean v3, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 67
    const v1, 0x7f02013f

    aput v1, v0, v4

    .line 68
    const v1, 0x7f020150

    aput v1, v0, v5

    .line 69
    const v1, 0x7f020158

    aput v1, v0, v6

    .line 70
    const v1, 0x7f020149

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 71
    const v2, 0x7f020146

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 72
    const v2, 0x7f020142

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 73
    const v2, 0x7f02014c

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 74
    const v2, 0x7f02013c

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 75
    const v2, 0x7f020139

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 76
    const v2, 0x7f020155

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 79
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 165
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 166
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/MenuListView;)[I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    return-object v0
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const v2, -0xdcd7cd

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-static {v0, v1, v4}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030037

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    .line 173
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/MenuListView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$3;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/MenuListView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$4;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 231
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateBirthdays()V

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v1, 0x7f0800c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/MenuListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$5;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/MenuListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$6;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/16 v3, 0x50

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 270
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 272
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 317
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
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

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 390
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 392
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/MenuListView$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$7;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 404
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 405
    sput-object p0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 406
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v1, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v1, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v1, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v1, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 416
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 417
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

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 420
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 421
    return-void

    .line 417
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 424
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 425
    const-string v0, "vk"

    const-string v1, "on detached"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 432
    return-void

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/MenuListView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/MenuListView$Listener;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    .line 457
    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 435
    .local p1, "_friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/MenuListView$8;-><init>(Lcom/vkontakte/android/MenuListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public updateBirthdays()V
    .locals 20

    .prologue
    .line 330
    const/4 v15, 0x0

    sput-object v15, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/cache/Cache;->getBirthdays(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 333
    .local v3, "bdays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 335
    const/high16 v15, 0x42200000    # 40.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    .line 336
    .local v9, "psize":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v12, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 340
    .local v4, "date":Ljava/util/Date;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 341
    .local v11, "today":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x5265c00

    add-long v15, v15, v17

    move-wide v0, v15

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 342
    .local v5, "date2":Ljava/util/Date;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 344
    .local v14, "yesterday":Ljava/lang/String;
    const/4 v6, 0x0

    .line 345
    .local v6, "hasToday":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_1

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v6, :cond_a

    const v15, 0x7f060146

    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, ", "

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 369
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    sput-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    .line 370
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 371
    sget-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v16, "_class"

    const-string v17, "ProfileFragment"

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 372
    sget-object v16, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v17, "id"

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    iget v15, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "date2":Ljava/util/Date;
    .end local v6    # "hasToday":Z
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "psize":I
    .end local v11    # "today":Ljava/lang/String;
    .end local v12    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v14    # "yesterday":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 387
    return-void

    .line 345
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v5    # "date2":Ljava/util/Date;
    .restart local v6    # "hasToday":Z
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "psize":I
    .restart local v11    # "today":Ljava/lang/String;
    .restart local v12    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v14    # "yesterday":Ljava/lang/String;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 347
    .local v8, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/4 v6, 0x1

    .line 349
    :cond_2
    if-eqz v6, :cond_3

    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    if-nez v6, :cond_5

    :cond_4
    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_5
    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "\\."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 351
    .local v10, "ss":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    const/16 v16, 0x2

    aget-object v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 353
    .local v13, "year":I
    :goto_3
    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f06001d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 360
    :goto_4
    if-lez v13, :cond_6

    .line 361
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x76c

    move/from16 v16, v0

    sub-int v2, v16, v13

    .line 362
    .local v2, "age":I
    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0d0038

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 364
    .end local v2    # "age":I
    :cond_6
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 351
    .end local v13    # "year":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 355
    .restart local v13    # "year":I
    :cond_8
    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f06014a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto :goto_4

    .line 358
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v17, 0x0

    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto/16 :goto_4

    .line 366
    .end local v8    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v10    # "ss":[Ljava/lang/String;
    .end local v13    # "year":I
    :cond_a
    const v15, 0x7f060147

    goto/16 :goto_1

    .line 374
    :cond_b
    sget-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v16, "_class"

    const-string v17, "UserListFragment"

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 375
    sget-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v16, "type"

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    sget-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v16, "users"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    sget-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v16, "extended"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    sget-object v15, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    const-string v16, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f060149

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$9;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public updateUserInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 327
    return-void
.end method

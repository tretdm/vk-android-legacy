.class public Lcom/vkontakte/android/MenuListView;
.super Lcom/vkontakte/android/ui/RefreshableListView;
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


# instance fields
.field private adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

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

.field private listener:Lcom/vkontakte/android/MenuListView$Listener;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private userName:Ljava/lang/String;

.field private userPhoto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 92
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_profile"

    aput-object v2, v0, v1

    const-string v1, "\u041c\u043e\u0438 \u0414\u0440\u0443\u0437\u044c\u044f"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u043e\u0438 \u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u043e\u0438 \u0412\u0438\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u043e\u0438 \u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u043e\u0438 \u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "\u041c\u043e\u0438 \u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041c\u043e\u0438 \u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 47
    const v1, 0x7f0200e5

    aput v1, v0, v3

    .line 48
    const v1, 0x7f0200f4

    aput v1, v0, v4

    .line 49
    const v1, 0x7f0200f7

    aput v1, v0, v5

    .line 50
    const v1, 0x7f0200ee

    aput v1, v0, v6

    .line 51
    const v1, 0x7f0200eb

    aput v1, v0, v7

    const/4 v1, 0x6

    .line 52
    const v2, 0x7f0200e8

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 53
    const v2, 0x7f0200f1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 56
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_profile"

    aput-object v2, v0, v1

    const-string v1, "\u041c\u043e\u0438 \u0414\u0440\u0443\u0437\u044c\u044f"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u043e\u0438 \u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u043e\u0438 \u0412\u0438\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u043e\u0438 \u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u043e\u0438 \u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "\u041c\u043e\u0438 \u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041c\u043e\u0438 \u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 47
    const v1, 0x7f0200e5

    aput v1, v0, v3

    .line 48
    const v1, 0x7f0200f4

    aput v1, v0, v4

    .line 49
    const v1, 0x7f0200f7

    aput v1, v0, v5

    .line 50
    const v1, 0x7f0200ee

    aput v1, v0, v6

    .line 51
    const v1, 0x7f0200eb

    aput v1, v0, v7

    const/4 v1, 0x6

    .line 52
    const v2, 0x7f0200e8

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 53
    const v2, 0x7f0200f1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 56
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 98
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_profile"

    aput-object v2, v0, v1

    const-string v1, "\u041c\u043e\u0438 \u0414\u0440\u0443\u0437\u044c\u044f"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u043e\u0438 \u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u043e\u0438 \u0412\u0438\u0434\u0435\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u041c\u043e\u0438 \u0410\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041c\u043e\u0438 \u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "\u041c\u043e\u0438 \u0413\u0440\u0443\u043f\u043f\u044b"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041c\u043e\u0438 \u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 47
    const v1, 0x7f0200e5

    aput v1, v0, v3

    .line 48
    const v1, 0x7f0200f4

    aput v1, v0, v4

    .line 49
    const v1, 0x7f0200f7

    aput v1, v0, v5

    .line 50
    const v1, 0x7f0200ee

    aput v1, v0, v6

    .line 51
    const v1, 0x7f0200eb

    aput v1, v0, v7

    const/4 v1, 0x6

    .line 52
    const v2, 0x7f0200e8

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 53
    const v2, 0x7f0200f1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 56
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MenuListView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/MenuListView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/MenuListView;)[I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    .local v0, "d":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->items:[Ljava/lang/String;

    .line 109
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 110
    new-instance v1, Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MenuListView;->setCacheColorHint(I)V

    .line 114
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MenuListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MenuListView;->setRefreshEnabled(Z)V

    .line 119
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MenuListView;->setTopColor(I)V

    .line 120
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MenuListView;->setHeaderDividersEnabled(Z)V

    .line 121
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/MenuListView;->setVerticalScrollBarEnabled(Z)V

    .line 123
    new-instance v1, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;)V

    invoke-direct {v1, v2, p0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 146
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "username"

    const-string v3, "DELETED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 157
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/MenuListView$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$3;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 162
    sput-object p0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method

.method public setListener(Lcom/vkontakte/android/MenuListView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/MenuListView$Listener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    .line 193
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
    .line 176
    .local p1, "_friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v0, Lcom/vkontakte/android/MenuListView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/MenuListView$4;-><init>(Lcom/vkontakte/android/MenuListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public updateList()V
    .locals 3

    .prologue
    .line 185
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=== UPDATE === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$5;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public updateUserInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 154
    return-void
.end method

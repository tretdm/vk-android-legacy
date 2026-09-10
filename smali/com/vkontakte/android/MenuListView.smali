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

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 65
    const v2, 0x7f020165

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const v2, 0x7f020154

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const v2, 0x7f02015f

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const v2, 0x7f020157

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const v2, 0x7f02015a

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 70
    const v2, 0x7f02016b

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 71
    const v2, 0x7f020176

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 72
    const v2, 0x7f020162

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 73
    const v2, 0x7f020151

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 74
    const v2, 0x7f020170

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 75
    const v2, 0x7f020173

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 78
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 164
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 65
    const v2, 0x7f020165

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const v2, 0x7f020154

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const v2, 0x7f02015f

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const v2, 0x7f020157

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const v2, 0x7f02015a

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 70
    const v2, 0x7f02016b

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 71
    const v2, 0x7f020176

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 72
    const v2, 0x7f020162

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 73
    const v2, 0x7f020151

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 74
    const v2, 0x7f020170

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 75
    const v2, 0x7f020173

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 78
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 169
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 65
    const v2, 0x7f020165

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const v2, 0x7f020154

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const v2, 0x7f02015f

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const v2, 0x7f020157

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const v2, 0x7f02015a

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 70
    const v2, 0x7f02016b

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 71
    const v2, 0x7f020176

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 72
    const v2, 0x7f020162

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 73
    const v2, 0x7f020151

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 74
    const v2, 0x7f020170

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 75
    const v2, 0x7f020173

    aput v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    .line 78
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 174
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 175
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    return-object v0
.end method

.method static synthetic access$13(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    sput-object p0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/MenuListView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/MenuListView;)[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->icons:[I

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const v2, -0xdcd7cd

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:Ljava/util/List;

    .line 179
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030050

    invoke-static {v0, v1, v4}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030049

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    .line 181
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/MenuListView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$3;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 195
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

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/MenuListView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$4;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/MenuListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$5;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 243
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 244
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateBirthdays()V

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/MenuListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$6;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/MenuListView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$7;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/16 v3, 0x50

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 269
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 271
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
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

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 363
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 365
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/MenuListView$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$9;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 377
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 378
    sput-object p0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 379
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v1, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "com.vkontakte.android.USER_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 391
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
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

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 395
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 396
    return-void

    .line 392
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 399
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 400
    const-string v0, "vk"

    const-string v1, "on detached"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 407
    return-void

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/MenuListView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/MenuListView$Listener;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    .line 432
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
    .line 410
    .local p1, "_friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/MenuListView$10;-><init>(Lcom/vkontakte/android/MenuListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public updateBirthdays()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/MenuListView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$8;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 360
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$11;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public updateUserInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 286
    return-void
.end method

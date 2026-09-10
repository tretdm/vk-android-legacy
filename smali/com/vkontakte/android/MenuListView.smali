.class public Lcom/vkontakte/android/MenuListView;
.super Landroid/widget/FrameLayout;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/MenuListView$Listener;,
        Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;,
        Lcom/vkontakte/android/MenuListView$MenuAdapter;
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

.field private static icons:[Landroid/graphics/drawable/Drawable;

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

.field private iconsRes:[I

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private isTopLevel:Z

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

.field private lastClick:J

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    .line 61
    sput-object v1, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/vkontakte/android/MenuListView;->reminderInfo:Landroid/os/Bundle;

    .line 86
    sput-object v1, Lcom/vkontakte/android/MenuListView;->icons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MenuListView;->lastClick:J

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    .line 88
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 179
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 180
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x0
        0x7f0200ed
        0x7f0200e6
        0x7f0200eb
        0x7f0200e7
        0x7f0200e9
        0x7f0200f1
        0x7f0200f6
        0x7f0200ec
        0x7f0200e8
        0x7f0200e5
        0x7f0200f4
        0x7f0200f5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MenuListView;->lastClick:J

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    .line 88
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 184
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 185
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x0
        0x7f0200ed
        0x7f0200e6
        0x7f0200eb
        0x7f0200e7
        0x7f0200e9
        0x7f0200f1
        0x7f0200f6
        0x7f0200ec
        0x7f0200e8
        0x7f0200e5
        0x7f0200f4
        0x7f0200f5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topLevel"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/MenuListView;->touchInPlayer:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/MenuListView;->lastClick:J

    .line 71
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    .line 88
    new-instance v0, Lcom/vkontakte/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$1;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/vkontakte/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/MenuListView$2;-><init>(Lcom/vkontakte/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 173
    iput-boolean p2, p0, Lcom/vkontakte/android/MenuListView;->isTopLevel:Z

    .line 174
    invoke-direct {p0}, Lcom/vkontakte/android/MenuListView;->init()V

    .line 175
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x0
        0x7f0200ed
        0x7f0200e6
        0x7f0200eb
        0x7f0200e7
        0x7f0200e9
        0x7f0200f1
        0x7f0200f6
        0x7f0200ec
        0x7f0200e8
        0x7f0200e5
        0x7f0200f4
        0x7f0200f5
    .end array-data
.end method

.method static synthetic access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/MenuListView;->openFromMenu(Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p0, Lcom/vkontakte/android/MenuListView;->reminderText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/MenuListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/vkontakte/android/MenuListView;->icons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/MenuListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/MenuListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/vkontakte/android/MenuListView;->lastClick:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/MenuListView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/vkontakte/android/MenuListView;->lastClick:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/MenuListView$MenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/MenuListView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    return-object v0
.end method

.method public static getRecommendedWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->items:Ljava/util/List;

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030042

    invoke-static {v5, v6, v10}, Lcom/vkontakte/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    .line 190
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03003b

    invoke-static {v5, v6, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    .line 191
    new-instance v5, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    .line 193
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    const v6, 0x7f0800c1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/MenuListView$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/MenuListView$3;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView;->searchBox:Landroid/view/View;

    invoke-virtual {v5, v6, v10, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 202
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-direct {v6, p0, v10}, Lcom/vkontakte/android/MenuListView$MenuAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$1;)V

    iput-object v6, p0, Lcom/vkontakte/android/MenuListView;->adapter:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    const v6, -0xcec8bf

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 204
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v7, -0xbfb7ae

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 206
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 207
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02007c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 209
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 211
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/MenuListView$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/MenuListView$4;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 233
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/MenuListView$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/MenuListView$5;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 255
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;

    invoke-direct {v6, p0, v10}, Lcom/vkontakte/android/MenuListView$MenuImagesAdapter;-><init>(Lcom/vkontakte/android/MenuListView;Lcom/vkontakte/android/MenuListView$1;)V

    iget-object v7, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-direct {v5, v6, v7, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "username"

    const-string v7, "DELETED"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "userphoto"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateBirthdays()V

    .line 260
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v6, 0x7f0800cb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/MenuListView$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/MenuListView$6;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    const v6, 0x7f0800ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/MenuListView$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/MenuListView$7;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/16 v8, 0x50

    invoke-direct {v6, v11, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 280
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/MenuListView;->addView(Landroid/view/View;)V

    .line 281
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02018c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 284
    new-instance v5, Lcom/vkontakte/android/MenuListView$8;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/MenuListView$8;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 359
    sget-object v5, Lcom/vkontakte/android/MenuListView;->icons:[Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 360
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    array-length v5, v5

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    sput-object v5, Lcom/vkontakte/android/MenuListView;->icons:[Landroid/graphics/drawable/Drawable;

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 362
    iget-object v5, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    aget v5, v5, v1

    if-nez v5, :cond_0

    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 364
    .local v4, "sld":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/MenuListView;->iconsRes:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 365
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 366
    .local v3, "normal":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 367
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 368
    const/16 v5, 0xe3

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 369
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 371
    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x10100a7

    aput v6, v5, v9

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 372
    sget-object v5, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 373
    sget-object v5, Lcom/vkontakte/android/MenuListView;->icons:[Landroid/graphics/drawable/Drawable;

    aput-object v4, v5, v1

    goto :goto_1

    .line 376
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "i":I
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "normal":Landroid/graphics/Bitmap;
    .end local v4    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    return-void
.end method

.method private openFromMenu(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9
    .param p1, "fclass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "back"    # Z

    .prologue
    .line 383
    if-eqz p3, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 385
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-static {p1, p2, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 413
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-boolean v6, p0, Lcom/vkontakte/android/MenuListView;->isTopLevel:Z

    if-eqz v6, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 391
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 392
    if-eqz p2, :cond_1

    .line 393
    const-string v6, "_from_menu"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 397
    .local v0, "act":Landroid/app/Activity;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.vkontakte.android.fragments."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 398
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 399
    .local v3, "fragment":Landroid/app/Fragment;
    invoke-virtual {v3, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 400
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f080014

    const-string v8, "news"

    invoke-virtual {v6, v7, v3, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v5

    .line 402
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error starting fragment! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    const v6, 0x7f0d00d0

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 404
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 407
    .end local v0    # "act":Landroid/app/Activity;
    .end local v2    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "class"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v6, "args"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 410
    const/high16 v6, 0x4000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 418
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
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

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->playerShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 422
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 504
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 506
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/MenuListView$10;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/MenuListView$10;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 519
    sput-object p0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 521
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v1, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v1, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v1, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v1, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v1, "com.vkontakte.android.USER_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v1, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 532
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 533
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

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 536
    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 537
    return-void

    .line 533
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 541
    const-string v0, "vk"

    const-string v1, "on detached"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView;->audioCallback:Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 548
    return-void

    .line 545
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/MenuListView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/MenuListView$Listener;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView;->listener:Lcom/vkontakte/android/MenuListView$Listener;

    .line 573
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
    .line 551
    .local p1, "_friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/MenuListView$11;-><init>(Lcom/vkontakte/android/MenuListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method public updateBirthdays()V
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/MenuListView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$9;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/MenuListView$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MenuListView$12;-><init>(Lcom/vkontakte/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public updateUserInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userName:Ljava/lang/String;

    .line 426
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 428
    return-void
.end method

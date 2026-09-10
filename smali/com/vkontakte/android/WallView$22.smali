.class Lcom/vkontakte/android/WallView$22;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    iput-boolean p2, p0, Lcom/vkontakte/android/WallView$22;->val$refresh:Z

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WallView$22;)Lcom/vkontakte/android/WallView;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/UserWallCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    .line 1119
    .local v0, "entries":[Lcom/vkontakte/android/NewsEntry;
    iget-object v1, p0, Lcom/vkontakte/android/WallView$22;->this$0:Lcom/vkontakte/android/WallView;

    new-instance v2, Lcom/vkontakte/android/WallView$22$1;

    iget-boolean v3, p0, Lcom/vkontakte/android/WallView$22;->val$refresh:Z

    invoke-direct {v2, p0, v0, v3}, Lcom/vkontakte/android/WallView$22$1;-><init>(Lcom/vkontakte/android/WallView$22;[Lcom/vkontakte/android/NewsEntry;Z)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/WallView;->post(Ljava/lang/Runnable;)Z

    .line 1123
    return-void
.end method

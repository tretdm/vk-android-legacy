.class Lcom/vkontakte/android/WallView$20$1;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/WallView$20;

.field private final synthetic val$entries:[Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView$20;[Lcom/vkontakte/android/NewsEntry;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$20$1;->this$1:Lcom/vkontakte/android/WallView$20;

    iput-object p2, p0, Lcom/vkontakte/android/WallView$20$1;->val$entries:[Lcom/vkontakte/android/NewsEntry;

    iput-boolean p3, p0, Lcom/vkontakte/android/WallView$20$1;->val$refresh:Z

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/vkontakte/android/WallView$20$1;->this$1:Lcom/vkontakte/android/WallView$20;

    invoke-static {v0}, Lcom/vkontakte/android/WallView$20;->access$0(Lcom/vkontakte/android/WallView$20;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/WallView$20$1;->val$entries:[Lcom/vkontakte/android/NewsEntry;

    iget-boolean v2, p0, Lcom/vkontakte/android/WallView$20$1;->val$refresh:Z

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/WallView;->onDataLoaded([Lcom/vkontakte/android/NewsEntry;Z)V

    .line 1017
    iget-object v0, p0, Lcom/vkontakte/android/WallView$20$1;->this$1:Lcom/vkontakte/android/WallView$20;

    invoke-static {v0}, Lcom/vkontakte/android/WallView$20;->access$0(Lcom/vkontakte/android/WallView$20;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/WallView$20$1;->this$1:Lcom/vkontakte/android/WallView$20;

    invoke-static {v1}, Lcom/vkontakte/android/WallView$20;->access$0(Lcom/vkontakte/android/WallView$20;)Lcom/vkontakte/android/WallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/cache/UserWallCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/WallView;->lastUpdateTime:I

    .line 1018
    return-void
.end method

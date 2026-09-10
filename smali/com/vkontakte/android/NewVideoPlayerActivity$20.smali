.class Lcom/vkontakte/android/NewVideoPlayerActivity$20;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$20;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 980
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$20;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 983
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$20;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v2, 0x7f0901d2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$20;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    .line 987
    return-void

    .line 985
    :catch_0
    move-exception v0

    goto :goto_0
.end method

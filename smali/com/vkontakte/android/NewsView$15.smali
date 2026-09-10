.class Lcom/vkontakte/android/NewsView$15;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->preloadNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$15;->this$0:Lcom/vkontakte/android/NewsView;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsView$15;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$15;->this$0:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v6, p0, Lcom/vkontakte/android/NewsView$15;->this$0:Lcom/vkontakte/android/NewsView;

    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGet;

    const-string v1, "0"

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/vkontakte/android/NewsView$15;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v4}, Lcom/vkontakte/android/NewsView;->access$7(Lcom/vkontakte/android/NewsView;)I

    move-result v5

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IIZI)V

    .line 708
    new-instance v1, Lcom/vkontakte/android/NewsView$15$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsView$15$1;-><init>(Lcom/vkontakte/android/NewsView$15;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$15;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 707
    invoke-static {v6, v0}, Lcom/vkontakte/android/NewsView;->access$8(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 743
    return-void
.end method

.class Lcom/vkontakte/android/NewsItemView$5$1;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView$5;->success(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NewsItemView$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView$5;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5$1;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5$1;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    iget-object v0, v0, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$5$1;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    iget-object v1, v1, Lcom/vkontakte/android/NewsItemView$5;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$000(Lcom/vkontakte/android/NewsItemView;Z)V

    .line 604
    return-void
.end method

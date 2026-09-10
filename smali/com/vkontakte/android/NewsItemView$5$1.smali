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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$5$1;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$5$1;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-static {v0}, Lcom/vkontakte/android/NewsItemView$5;->access$0(Lcom/vkontakte/android/NewsItemView$5;)Lcom/vkontakte/android/NewsItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewsItemView$5$1;->this$1:Lcom/vkontakte/android/NewsItemView$5;

    invoke-static {v1}, Lcom/vkontakte/android/NewsItemView$5;->access$0(Lcom/vkontakte/android/NewsItemView$5;)Lcom/vkontakte/android/NewsItemView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/NewsItemView;->e:Lcom/vkontakte/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$0(Lcom/vkontakte/android/NewsItemView;Z)V

    .line 605
    return-void
.end method

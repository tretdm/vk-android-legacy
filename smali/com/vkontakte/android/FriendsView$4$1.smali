.class Lcom/vkontakte/android/FriendsView$4$1;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsView$4;->success(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendsView$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsView$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$4$1;->this$1:Lcom/vkontakte/android/FriendsView$4;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4$1;->this$1:Lcom/vkontakte/android/FriendsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView$4;->access$0(Lcom/vkontakte/android/FriendsView$4;)Lcom/vkontakte/android/FriendsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$14(Lcom/vkontakte/android/FriendsView;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendsView$4$1;->this$1:Lcom/vkontakte/android/FriendsView$4;

    invoke-static {v1}, Lcom/vkontakte/android/FriendsView$4;->access$0(Lcom/vkontakte/android/FriendsView$4;)Lcom/vkontakte/android/FriendsView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/FriendsView;->access$15(Lcom/vkontakte/android/FriendsView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 368
    return-void
.end method

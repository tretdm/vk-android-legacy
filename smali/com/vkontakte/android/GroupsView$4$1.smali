.class Lcom/vkontakte/android/GroupsView$4$1;
.super Ljava/lang/Object;
.source "GroupsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsView$4;->success(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/GroupsView$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsView$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$4$1;->this$1:Lcom/vkontakte/android/GroupsView$4;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4$1;->this$1:Lcom/vkontakte/android/GroupsView$4;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView$4;->access$0(Lcom/vkontakte/android/GroupsView$4;)Lcom/vkontakte/android/GroupsView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$12(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/GroupsView$4$1;->this$1:Lcom/vkontakte/android/GroupsView$4;

    invoke-static {v1}, Lcom/vkontakte/android/GroupsView$4;->access$0(Lcom/vkontakte/android/GroupsView$4;)Lcom/vkontakte/android/GroupsView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/GroupsView;->access$13(Lcom/vkontakte/android/GroupsView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 249
    return-void
.end method

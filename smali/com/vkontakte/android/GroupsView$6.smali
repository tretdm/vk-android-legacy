.class Lcom/vkontakte/android/GroupsView$6;
.super Ljava/lang/Object;
.source "GroupsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsView;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$6;->this$0:Lcom/vkontakte/android/GroupsView;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$6;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$1(Lcom/vkontakte/android/GroupsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 272
    return-void
.end method

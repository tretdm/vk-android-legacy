.class Lcom/vkontakte/android/GroupsView$2;
.super Ljava/lang/Object;
.source "GroupsView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsView;->init()V
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
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$2;->this$0:Lcom/vkontakte/android/GroupsView;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$2;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$6(Lcom/vkontakte/android/GroupsView;)V

    .line 113
    return-void
.end method

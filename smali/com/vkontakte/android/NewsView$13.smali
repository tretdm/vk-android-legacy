.class Lcom/vkontakte/android/NewsView$13;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->deselectAll()V
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
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$13;->this$0:Lcom/vkontakte/android/NewsView;

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 968
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$13;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v1}, Lcom/vkontakte/android/NewsView;->access$3(Lcom/vkontakte/android/NewsView;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    return-void

    .line 968
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 969
    .local v0, "v":Landroid/view/View;
    check-cast v0, Lcom/vkontakte/android/NewsItemView;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lcom/vkontakte/android/NewsItemView;->deselect()V

    goto :goto_0
.end method

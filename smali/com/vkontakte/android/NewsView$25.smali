.class Lcom/vkontakte/android/NewsView$25;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$25;->this$0:Lcom/vkontakte/android/NewsView;

    iput-object p2, p0, Lcom/vkontakte/android/NewsView$25;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/NewsView$25;->val$e:Lcom/vkontakte/android/NewsEntry;

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$25;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v0, p0, Lcom/vkontakte/android/NewsView$25;->val$acts:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$25;->val$e:Lcom/vkontakte/android/NewsEntry;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/NewsView;->access$17(Lcom/vkontakte/android/NewsView;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V

    .line 1331
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;
.super Ljava/lang/Object;
.source "ThumbsBlockPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

.field private final synthetic val$container:Landroid/view/View;

.field private final synthetic val$index:I

.field private final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    iput p2, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->val$index:I

    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->val$photos:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->val$container:Landroid/view/View;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    iget v1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->val$index:I

    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->val$photos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->this$0:Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    iget-object v4, v2, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v5, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$2;->val$container:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->access$0(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/ViewGroup;)V

    .line 106
    return-void
.end method

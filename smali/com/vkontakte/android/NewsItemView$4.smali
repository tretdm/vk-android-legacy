.class Lcom/vkontakte/android/NewsItemView$4;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$containerID:I

.field private final synthetic val$e:Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$idx:I

.field private final synthetic val$item:Landroid/view/View;

.field private final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/NewsItemView$4;->val$idx:I

    iput-object p2, p0, Lcom/vkontakte/android/NewsItemView$4;->val$photos:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/NewsItemView$4;->val$e:Lcom/vkontakte/android/NewsEntry;

    iput-object p4, p0, Lcom/vkontakte/android/NewsItemView$4;->val$item:Landroid/view/View;

    iput p5, p0, Lcom/vkontakte/android/NewsItemView$4;->val$containerID:I

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    iget v0, p0, Lcom/vkontakte/android/NewsItemView$4;->val$idx:I

    iget-object v2, p0, Lcom/vkontakte/android/NewsItemView$4;->val$photos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkontakte/android/NewsItemView$4;->val$e:Lcom/vkontakte/android/NewsEntry;

    iget-object v4, p0, Lcom/vkontakte/android/NewsItemView$4;->val$item:Landroid/view/View;

    iget v5, p0, Lcom/vkontakte/android/NewsItemView$4;->val$containerID:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/NewsItemView;->access$1(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;Landroid/view/View;I)V

    .line 353
    return-void
.end method

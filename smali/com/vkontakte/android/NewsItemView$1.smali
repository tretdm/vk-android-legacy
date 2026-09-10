.class Lcom/vkontakte/android/NewsItemView$1;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsItemView;->setData(Lcom/vkontakte/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsItemView;

.field private final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsItemView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsItemView$1;->this$0:Lcom/vkontakte/android/NewsItemView;

    iput p2, p0, Lcom/vkontakte/android/NewsItemView$1;->val$idx:I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/NewsItemView$1;->this$0:Lcom/vkontakte/android/NewsItemView;

    iget v1, p0, Lcom/vkontakte/android/NewsItemView$1;->val$idx:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewsItemView;->access$0(Lcom/vkontakte/android/NewsItemView;I)V

    .line 141
    return-void
.end method

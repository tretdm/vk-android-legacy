.class Lcom/vkontakte/android/MenuListView$MenuAdapter$2;
.super Landroid/widget/TextView;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView$MenuAdapter;->getView(IILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MenuListView$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView$MenuAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$MenuAdapter$2;->this$1:Lcom/vkontakte/android/MenuListView$MenuAdapter;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x1

    return v0
.end method

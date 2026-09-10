.class public Lcom/vkontakte/android/WallView$WallAdapter;
.super Lcom/vkontakte/android/NewsView$NewsAdapter;
.source "WallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WallAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/vkontakte/android/WallView$WallAdapter;->this$0:Lcom/vkontakte/android/WallView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsView$NewsAdapter;-><init>(Lcom/vkontakte/android/NewsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1487
    invoke-super {p0}, Lcom/vkontakte/android/NewsView$NewsAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "cview"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 1491
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/NewsView$NewsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

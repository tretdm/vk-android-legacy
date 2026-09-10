.class Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public newText:Landroid/widget/TextView;

.field public subtitle:Landroid/widget/TextView;

.field public subtitle2:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$CatalogAdapter;)V

    return-void
.end method

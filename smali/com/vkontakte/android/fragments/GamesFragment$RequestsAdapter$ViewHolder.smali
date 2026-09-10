.class Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GamesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public appName:Landroid/widget/TextView;

.field public appSubtitle:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public msg:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public photo:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;->this$1:Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;Lcom/vkontakte/android/fragments/GamesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/GamesFragment$1;

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter$ViewHolder;-><init>(Lcom/vkontakte/android/fragments/GamesFragment$RequestsAdapter;)V

    return-void
.end method

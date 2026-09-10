.class Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLayout"
.end annotation


# instance fields
.field public height:I

.field public index:I

.field public photo:Lcom/vkontakte/android/Photo;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

.field public width:I


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoListFragment$PhotoLayout;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    return-void
.end method

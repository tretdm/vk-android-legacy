.class public Lcom/vkontakte/android/AudioPlayerView;
.super Landroid/widget/LinearLayout;
.source "AudioPlayerView.java"


# static fields
.field private static pauseIcon:Landroid/graphics/drawable/Drawable;

.field private static playIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field addBtn:Landroid/widget/ImageView;

.field private aview:Landroid/view/View;

.field canUpdateProgress:Z

.field private coverAid:I

.field private coverOid:I

.field file:Lcom/vkontakte/android/AudioFile;

.field public isRegistered:Z

.field private oldBg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 46
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 51
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->showBroadcastDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->doUpdateCover()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->aview:Landroid/view/View;

    return-object v0
.end method

.method private doUpdateCover()V
    .locals 5

    .prologue
    .line 297
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 298
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 299
    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v3, 0x0

    new-instance v4, Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/AudioPlayerView$12;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-static {v1, v2, v3, v4}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 340
    return-void
.end method

.method private showBroadcastDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, "grps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminedGroups(Ljava/util/ArrayList;)V

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v6

    .line 232
    .local v6, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06021a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 234
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Z

    .line 235
    .local v0, "checked":[Z
    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    aput-boolean v7, v0, v9

    .line 236
    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v3, 0x1

    .line 238
    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 243
    new-instance v7, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    const v8, 0x7f060219

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 245
    new-array v7, v9, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$9;

    invoke-direct {v9, p0, v0}, Lcom/vkontakte/android/AudioPlayerView$9;-><init>(Lcom/vkontakte/android/AudioPlayerView;[Z)V

    invoke-virtual {v8, v7, v0, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 251
    const v8, 0x7f060028

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$10;

    invoke-direct {v9, p0, v0, v4}, Lcom/vkontakte/android/AudioPlayerView$10;-><init>(Lcom/vkontakte/android/AudioPlayerView;[ZLjava/util/ArrayList;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 263
    const v8, 0x7f060027

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 264
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    return-void

    .line 233
    .end local v0    # "checked":[Z
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget-object v8, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .restart local v0    # "checked":[Z
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 239
    .restart local v1    # "g":Lcom/vkontakte/android/api/Group;
    iget v8, v1, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v0, v3

    .line 240
    iget v8, v1, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addCurrentFile()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v1, "audio_id"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 190
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$8;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public displayInfo(Lcom/vkontakte/android/AudioFile;)V
    .locals 5
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    .line 213
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->updateCover()V

    .line 217
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->updateLyrics()V

    .line 218
    return-void
.end method

.method public enableBroadcast(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 384
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable broadcast "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v0, Lcom/vkontakte/android/AudioPlayerView$14;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerView$14;-><init>(Lcom/vkontakte/android/AudioPlayerView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public enableControlButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 392
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 393
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 394
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 395
    return-void
.end method

.method public forceUpdateCover()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerView;->coverOid:I

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerView;->coverAid:I

    .line 222
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->updateCover()V

    .line 223
    return-void
.end method

.method public haveLyrics()Z
    .locals 1

    .prologue
    .line 374
    const v0, 0x7f080078

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 8

    .prologue
    const v7, 0x7f08006c

    const/4 v6, -0x1

    const v5, 0x7f080077

    const v4, 0x7f080075

    const/4 v3, 0x1

    .line 56
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerView;->setOrientation(I)V

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->removeAllViews()V

    .line 58
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->aview:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->aview:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->aview:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->addView(Landroid/view/View;)V

    .line 62
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$1;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$2;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$3;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$4;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 111
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 112
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 115
    :cond_0
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$5;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$6;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$7;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget-object v0, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/AudioPlayerView;->pauseIcon:Landroid/graphics/drawable/Drawable;

    .line 154
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 159
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_2

    .line 161
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isBroadcast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 163
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerView;->coverOid:I

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerView;->coverAid:I

    .line 164
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public register()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/AudioPlayerService;->registerPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V

    .line 169
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBuffered(I)V
    .locals 1
    .param p1, "progr"    # I

    .prologue
    .line 412
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 413
    return-void
.end method

.method public setNumber(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public setPlaying(Z)V
    .locals 2
    .param p1, "playing"    # Z

    .prologue
    .line 402
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerView;->pauseIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    return-void

    .line 402
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgress(ILjava/lang/String;)V
    .locals 1
    .param p1, "progr"    # I
    .param p2, "sDuration"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 408
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showLyrics()V
    .locals 3

    .prologue
    .line 378
    const v1, 0x7f080078

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 379
    .local v0, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 381
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 180
    :cond_0
    return-void
.end method

.method public updateCover()V
    .locals 4

    .prologue
    const v3, 0x7f080079

    .line 268
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerView;->coverAid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerView;->coverOid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v1, v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerView;->coverAid:I

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerView;->coverOid:I

    .line 271
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->doUpdateCover()V

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 275
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 276
    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$11;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 292
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public updateLyrics()V
    .locals 4

    .prologue
    const v3, 0x7f080078

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 344
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 345
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/AudioCache;->getLyrics(II)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 348
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 371
    .end local v0    # "l":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 353
    .restart local v0    # "l":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/api/AudioGetLyrics;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;-><init>(I)V

    .line 354
    new-instance v2, Lcom/vkontakte/android/AudioPlayerView$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioPlayerView$13;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;->setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 369
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
